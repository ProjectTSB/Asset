// PRの情報と既存のスレッドを集め、レビューするかを決める
// PRのコードはcheckoutせず、GitHubのAPIから読んだ内容をファイルへ書き出す
const fs = require('node:fs');
const path = require('node:path');
const { poster, login, isAiReview, parseMarker, diffHash } = require('./common.cjs');

const DATA_DIR = 'Asset/data/';

function prNumber(context) {
  // pull_request_targetではイベントのPR、workflow_dispatchでは入力の番号を使う
  if (context.payload.pull_request) {
    return context.payload.pull_request.number;
  }
  return Number(context.payload.inputs.pull_request);
}

// レビューの対象外ならその理由を返す
function skipReason(pr, repository, account) {
  // 閉じたPRはレビューしない
  if (pr.state !== 'open') {
    return 'the pull request is not open';
  }
  // DraftのPRはレビューしない
  if (pr.draft) {
    return 'the pull request is a draft';
  }
  // master以外へのPRはレビューしない
  if (pr.base.ref !== 'master') {
    return 'the base branch is not master';
  }
  // フォークからのPRはsecretを渡さないので対象外にする
  if (pr.head.repo === null || pr.head.repo.full_name !== repository) {
    return 'the head branch is not in this repository';
  }
  // 投稿用のアカウントが作ったPRはレビューしない
  if (login(pr) === account) {
    return `the pull request was opened by ${account}`;
  }
  return null;
}

// 変更がすべてデータパックの中にあるときだけ実機検証を許す
function isDataOnly(files, pr) {
  // 一覧が欠けているときは、データパック以外の変更が隠れている可能性があるので許さない
  if (files.length === 0 || files.length !== pr.changed_files) {
    return false;
  }
  return files.every(file => {
    // 名前を変えたファイルは、変更前の場所もデータパックの中にあることを求める
    if (file.previous_filename && !file.previous_filename.startsWith(DATA_DIR)) {
      return false;
    }
    return file.filename.startsWith(DATA_DIR);
  });
}

// 最後にAIが投稿した時点のheadと差分のハッシュを求める
function lastReviewed(aiReviews, aiReplies) {
  const posts = [];
  // AIのレビューを、記録のない古いレビューの代わりに使う投稿時のcommit_idとともに並べる
  for (const review of aiReviews) {
    posts.push({ at: review.submitted_at, body: review.body, commit: review.commit_id });
  }
  // AIの返信を並べる
  // 返信にはcommit_idがないので、記録だけを手がかりにする
  for (const reply of aiReplies) {
    posts.push({ at: reply.created_at, body: reply.body, commit: null });
  }
  posts.sort((a, b) => a.at.localeCompare(b.at));
  let head = null;
  let diff = null;
  let at = null;
  // 新しい投稿ほど後に読み、記録のある投稿の値で上書きする
  for (const post of posts) {
    const recorded = parseMarker(post.body);
    // 記録のある投稿は、その記録をそのまま使う
    if (recorded !== null) {
      head = recorded.head;
      diff = recorded.diff;
      at = post.at;
    } else if (post.commit !== null && diff === null) {
      // 記録のある投稿がまだないときだけ、記録のない古いレビューのcommit_idを最後に見たheadとみなす
      head = post.commit;
      at = post.at;
    }
  }
  return { head, diff, at };
}

function compact(comment) {
  return {
    id: comment.id,
    user: login(comment),
    created_at: comment.created_at,
    path: comment.path,
    line: comment.line,
    original_line: comment.original_line,
    body: comment.body,
  };
}

// 前回AIが見たheadから今のheadまでのコミットを集める
async function commitsSince(github, repo, number, lastHead, head) {
  // 前回の記録があり、今のheadから辿れるなら差分だけを返す
  if (lastHead !== null) {
    try {
      const { data } = await github.rest.repos.compareCommitsWithBasehead({
        ...repo, basehead: `${lastHead}...${head}`,
      });
      // 強制pushで前回のheadが履歴から外れた場合は、PRの全コミットへ切り替える
      if (data.status === 'ahead' || data.status === 'identical') {
        return { since: lastHead, commits: data.commits.map(summarizeCommit) };
      }
    } catch {
      // 前回のheadが取得できないときも、PRの全コミットへ切り替える
    }
  }
  const commits = await github.paginate(github.rest.pulls.listCommits, {
    ...repo, pull_number: number, per_page: 100,
  });
  return { since: null, commits: commits.map(summarizeCommit) };
}

function summarizeCommit(commit) {
  return {
    sha: commit.sha,
    date: commit.commit.committer.date,
    author: commit.commit.author.name,
    message: commit.commit.message,
    merge: commit.parents.length > 1,
  };
}

function write(outDir, name, value) {
  fs.writeFileSync(path.join(outDir, name), JSON.stringify(value, null, 2) + '\n');
}

async function collect({ github, context, core, outDir }) {
  const account = poster();
  const repo = context.repo;
  const repository = `${repo.owner}/${repo.repo}`;
  const number = prNumber(context);
  const params = { ...repo, pull_number: number };
  const { data: pr } = await github.rest.pulls.get(params);

  const reason = skipReason(pr, repository, account);
  // 対象外のPRは後のジョブを動かさない
  if (reason !== null) {
    core.info(`Skip #${number}: ${reason}.`);
    core.setOutput('run', 'false');
    return;
  }

  const files = await github.paginate(github.rest.pulls.listFiles, { ...params, per_page: 100 });
  const reviews = await github.paginate(github.rest.pulls.listReviews, { ...params, per_page: 100 });
  const comments = await github.paginate(github.rest.pulls.listReviewComments, { ...params, per_page: 100 });
  const issueComments = await github.paginate(github.rest.issues.listComments, {
    ...repo, issue_number: number, per_page: 100,
  });

  // AIのレビューに付いた行コメントをスレッドの起点とし、返信をまとめる
  const aiReviews = reviews.filter(review => isAiReview(review, account));
  const aiReviewIds = new Set(aiReviews.map(review => review.id));
  const roots = comments.filter(comment => !comment.in_reply_to_id && aiReviewIds.has(comment.pull_request_review_id));
  const rootIds = new Set(roots.map(comment => comment.id));
  const threads = roots.map(root => ({
    ...compact(root),
    replies: comments.filter(comment => comment.in_reply_to_id === root.id).map(compact),
  }));
  const aiReplies = comments.filter(comment => rootIds.has(comment.in_reply_to_id) && login(comment) === account);

  const diff = diffHash(files);
  const last = lastReviewed(aiReviews, aiReplies);
  let mode = 'initial';
  // AIのレビューがすでにあれば、前回の指摘の確認から始める
  if (aiReviews.length > 0) {
    mode = 'followup';
    // 前回の投稿から差分もheadも変わっていなければ、レビューし直さない
    if (last.diff === diff) {
      core.info(`Skip #${number}: the diff has not changed since the last AI post.`);
      core.setOutput('run', 'false');
      return;
    }
    // 記録のない古いレビューしかないときは、headが同じかで判定する
    if (last.head === pr.head.sha) {
      core.info(`Skip #${number}: the head has not changed since the last AI review.`);
      core.setOutput('run', 'false');
      return;
    }
  }

  const history = await commitsSince(github, repo, number, last.head, pr.head.sha);

  // AIのスレッド以外のレビュー・行コメント・PRコメントは、重複した指摘を避けるために渡す
  const discussion = {
    reviews: reviews.filter(review => !aiReviewIds.has(review.id) && review.body).map(review => ({
      id: review.id, user: login(review), state: review.state, submitted_at: review.submitted_at, body: review.body,
    })),
    comments: comments.filter(comment => !rootIds.has(comment.id) && !rootIds.has(comment.in_reply_to_id)).map(compact),
    issueComments: issueComments.map(comment => ({
      id: comment.id, user: login(comment), created_at: comment.created_at, body: comment.body,
    })),
  };

  fs.mkdirSync(outDir, { recursive: true });
  write(outDir, 'meta.json', {
    repository,
    number,
    url: pr.html_url,
    author: login(pr),
    head: pr.head.sha,
    base: pr.base.sha,
    mode,
    dataOnly: isDataOnly(files, pr),
    filesComplete: files.length === pr.changed_files,
    diffHash: diff,
    lastReviewedHead: history.since,
    lastReviewedAt: last.at,
  });
  write(outDir, 'pr.json', {
    title: pr.title,
    body: pr.body,
    labels: pr.labels.map(label => label.name),
  });
  write(outDir, 'files.json', files.map(file => ({
    filename: file.filename,
    previous_filename: file.previous_filename,
    status: file.status,
    additions: file.additions,
    deletions: file.deletions,
  })));
  write(outDir, 'threads.json', threads);
  write(outDir, 'discussion.json', discussion);
  write(outDir, 'commits.json', history.commits);

  core.info(`Review #${number} (${mode}) at ${pr.head.sha}.`);
  core.setOutput('run', 'true');
  core.setOutput('head', pr.head.sha);
  core.setOutput('base', pr.base.sha);
}

module.exports = { collect, skipReason, isDataOnly, lastReviewed };
