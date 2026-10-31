// Claudeが書いたreview.jsonを検査してから、PRへレビューと返信を投稿する
// Claudeが読んだPRの内容に指示が仕込まれていても、決まった形式の投稿しか通さない
const fs = require('node:fs');
const path = require('node:path');
const { DISCLAIMER, marker, poster } = require('./common.cjs');

const NO_FINDINGS = '指摘はありません。';
const COUNT_LINE = /^指摘が (\d+) 件あります。/;
const TOKEN_PATTERN = /sk-ant-[A-Za-z0-9_-]{8,}|gh[pousr]_[A-Za-z0-9]{20,}|github_pat_[A-Za-z0-9_]{20,}/;
const MENTION_PATTERN = /(^|[^A-Za-z0-9_])@[A-Za-z0-9-]/m;

// コードブロックとインラインコードの中の@はメンションにならないので、判定から外す
function withoutCode(text) {
  return text.replace(/```[\s\S]*?```/g, '').replace(/`[^`\n]*`/g, '');
}

// 投稿する文章に共通する検査
function checkText(text, where) {
  const errors = [];
  // 空の本文は投稿しない
  if (typeof text !== 'string' || text.trim() === '') {
    return [`${where}: the body is empty`];
  }
  // コードの外にある@はユーザーへの通知になるので通さない
  if (MENTION_PATTERN.test(withoutCode(text))) {
    errors.push(`${where}: contains an @ mention outside code`);
  }
  // トークンらしい文字列は公開しない
  if (TOKEN_PATTERN.test(text)) {
    errors.push(`${where}: contains a token-like string`);
  }
  // 前回の確認位置の記録は投稿時にこの処理が付けるので、本文に含めさせない
  if (/<!--\s*claude-review/.test(text)) {
    errors.push(`${where}: contains a claude-review marker`);
  }
  return errors;
}

function checkComment(comment, index) {
  const where = `review.comments[${index}]`;
  const errors = checkText(comment.body, where);
  // 行コメントはファイルと行を必ず持つ
  if (typeof comment.path !== 'string' || comment.path === '') {
    errors.push(`${where}: path is missing`);
  }
  // 行番号は1以上の整数にする
  if (!Number.isInteger(comment.line) || comment.line < 1) {
    errors.push(`${where}: line must be a positive integer`);
  }
  // 複数行のコメントは開始行が終了行より前にあることを求める
  if (comment.start_line !== undefined && !(Number.isInteger(comment.start_line) && comment.start_line < comment.line)) {
    errors.push(`${where}: start_line must be an integer before line`);
  }
  // 差分のどちら側の行かは、指定がなければ変更後の側とする
  if (comment.side !== undefined && comment.side !== 'RIGHT' && comment.side !== 'LEFT') {
    errors.push(`${where}: side must be RIGHT or LEFT`);
  }
  return errors;
}

// レビュー本文が、冒頭文と「指摘なし」または指摘の一覧だけでできているかを確かめる
function checkReview(review, mode) {
  const errors = checkText(review.body, 'review.body');
  // 本文がなければ、以降の形式の検査はできない
  if (errors.length > 0 && typeof review.body !== 'string') {
    return errors;
  }
  const lines = review.body.split('\n');
  const rest = lines.slice(1).filter(line => line.trim() !== '');
  const comments = review.comments;
  // 行コメントの一覧は配列で受け取る
  if (!Array.isArray(comments)) {
    errors.push('review.comments must be an array');
    return errors;
  }
  // 1行目は定型文と完全に一致させる
  if (lines[0] !== DISCLAIMER) {
    errors.push('review.body: the first line must be the disclaimer');
  }
  if (rest[0] === NO_FINDINGS) {
    // 指摘がない本文は「指摘はありません。」だけにし、行コメントも付けない
    if (rest.length !== 1 || comments.length > 0) {
      errors.push('review.body: a no-findings review must contain only the no-findings line');
    }
    // 前回の指摘を確認する回では、指摘のないレビューは出さない
    if (mode === 'followup') {
      errors.push('review: a follow-up must not post a no-findings review');
    }
  } else {
    const count = COUNT_LINE.exec(rest[0] || '');
    // 指摘があるときは件数の行と、その件数と同じ数の一覧だけを置く
    if (count === null) {
      errors.push('review.body: the second line must be the no-findings line or the findings count');
    } else {
      const expected = Number(count[1]);
      const items = rest.slice(1);
      // 一覧の各行は「- 〔重さ〕要約」の形にする
      if (expected < 1 || items.length !== expected || !items.every(item => item.startsWith('- 〔'))) {
        errors.push(`review.body: expected ${expected} findings lines starting with "- 〔"`);
      }
      // 指摘の詳細は行コメントに書くので、少なくとも1件の行コメントを求める
      if (comments.length === 0) {
        errors.push('review.comments: findings need at least one inline comment');
      }
    }
  }
  comments.forEach((comment, index) => errors.push(...checkComment(comment, index)));
  return errors;
}

// 返信が、このPRのAIのスレッドへ1回ずつ、結論を1行目に置いているかを確かめる
function checkReplies(replies, threadIds) {
  const errors = [];
  const seen = new Set();
  replies.forEach((reply, index) => {
    const where = `replies[${index}]`;
    errors.push(...checkText(reply.body, where));
    // 返信先はAIのレビューから始まったスレッドに限る
    if (!threadIds.has(reply.inReplyTo)) {
      errors.push(`${where}: inReplyTo is not an AI review thread of this pull request`);
    }
    // 同じスレッドへ一度に複数回は返信しない
    if (seen.has(reply.inReplyTo)) {
      errors.push(`${where}: duplicate reply to ${reply.inReplyTo}`);
    }
    seen.add(reply.inReplyTo);
    // 1行目に「解消」「一部未解消」「未解消」のどれかを含む結論を置く
    if (typeof reply.body === 'string' && !reply.body.split('\n')[0].includes('解消')) {
      errors.push(`${where}: the first line must state whether the finding is resolved`);
    }
  });
  return errors;
}

function validate(result, meta, threadIds) {
  const errors = [];
  // レビューしたheadは、集めた情報のheadと一致させる
  if (result.headSha !== meta.head) {
    errors.push(`headSha ${result.headSha} does not match the collected head ${meta.head}`);
  }
  // 返信は配列で受け取る
  if (!Array.isArray(result.replies)) {
    errors.push('replies must be an array');
    return errors;
  }
  if (result.review === null) {
    // 初めてのレビューでは、指摘がなくてもレビューを出す
    if (meta.mode === 'initial') {
      errors.push('review: the initial review is required');
    }
  } else {
    errors.push(...checkReview(result.review, meta.mode));
  }
  errors.push(...checkReplies(result.replies, threadIds));
  return errors;
}

function readJson(dir, name) {
  return JSON.parse(fs.readFileSync(path.join(dir, name), 'utf8'));
}

async function post({ github, context, core, contextDir, outputDir }) {
  const meta = readJson(contextDir, 'meta.json');
  const threads = readJson(contextDir, 'threads.json');
  const result = readJson(outputDir, 'review.json');
  const threadIds = new Set(threads.map(thread => thread.id));

  const errors = validate(result, meta, threadIds);
  // 形式に合わない投稿内容は投稿せず、ジョブを失敗させる
  if (errors.length > 0) {
    core.setFailed(`review.json was rejected:\n${errors.join('\n')}`);
    return;
  }

  const repo = context.repo;
  const { data: pr } = await github.rest.pulls.get({ ...repo, pull_number: meta.number });
  // レビューの間に閉じられたか、新しいpushがあった場合は、待機中の次の実行に任せる
  if (pr.state !== 'open' || pr.head.sha !== meta.head) {
    core.warning(`Skip posting: #${meta.number} is ${pr.state} at ${pr.head.sha}, reviewed ${meta.head}.`);
    return;
  }

  const tail = `\n\n${marker(meta.head, meta.diffHash)}`;
  let review = null;
  // レビューを出す場合は、行コメントを付けたCOMMENTのレビューにする
  if (result.review !== null) {
    review = {
      ...repo,
      pull_number: meta.number,
      commit_id: meta.head,
      event: 'COMMENT',
      body: result.review.body + tail,
      comments: result.review.comments.map(comment => {
        const item = { path: comment.path, line: comment.line, side: 'RIGHT', body: comment.body };
        // 指定があれば差分の側と複数行の開始行を引き継ぐ
        if (comment.side !== undefined) {
          item.side = comment.side;
        }
        // 複数行のコメントは開始行も同じ側に置く
        if (comment.start_line !== undefined) {
          item.start_line = comment.start_line;
          item.start_side = item.side;
        }
        return item;
      }),
    };
  }
  const replies = result.replies.map(reply => ({
    ...repo, pull_number: meta.number, comment_id: reply.inReplyTo, body: reply.body + tail,
  }));

  // 投稿するものがなければ何もしない
  if (review === null && replies.length === 0) {
    core.info('Nothing to post.');
    return;
  }

  // 投稿が有効になるまでは、投稿する内容を実行結果の概要に出すだけにする
  if (process.env.POST_ENABLED !== 'true') {
    await core.summary
      .addHeading(`Dry run for #${meta.number} (${meta.mode})`)
      .addCodeBlock(JSON.stringify({ review, replies }, null, 2), 'json')
      .write();
    core.info('Dry run: nothing was posted.');
    return;
  }

  const { data: user } = await github.rest.users.getAuthenticated();
  // 投稿用のトークンが投稿用のアカウントのものでなければ投稿しない
  if (user.login !== poster()) {
    core.setFailed(`The posting token belongs to ${user.login}, not ${poster()}.`);
    return;
  }
  // レビューを先に出し、その後で既存のスレッドへ返信する
  if (review !== null) {
    await github.rest.pulls.createReview(review);
  }
  // 各スレッドへの返信を順に投稿する
  for (const reply of replies) {
    await github.rest.pulls.createReplyForReviewComment(reply);
  }
  core.info(`Posted to #${meta.number}: ${replies.length} replies, review ${String(review !== null)}.`);
}

module.exports = { post, validate, withoutCode };
