const assert = require('node:assert/strict');
const fs = require('node:fs');
const os = require('node:os');
const path = require('node:path');
const { test } = require('node:test');

process.env.CLAUDE_REVIEW_POSTER = 'reviewer';
const common = require('../claude-review/common.cjs');
const { collect } = require('../claude-review/collect.cjs');
const { post, validate } = require('../claude-review/post.cjs');

const HEAD = 'a'.repeat(40);
const OLD = 'b'.repeat(40);
const BASE = 'c'.repeat(40);
const repo = { owner: 'ProjectTSB', repo: 'Example' };
const tmp = () => fs.mkdtempSync(path.join(os.tmpdir(), 'claude-review-'));
const read = (dir, name) => JSON.parse(fs.readFileSync(path.join(dir, name), 'utf8'));
const file = (filename, sha = 'blob', previous_filename) => ({ filename, sha, status: 'modified', previous_filename });

function prData(overrides = {}) {
  return {
    number: 7, state: 'open', draft: false, html_url: 'https://example/7', title: 'Add artifact',
    body: 'body', labels: [], user: { login: 'author' }, changed_files: 1,
    head: { sha: HEAD, repo: { full_name: 'ProjectTSB/Example' } },
    base: { ref: 'master', sha: BASE }, ...overrides,
  };
}

function fakeGithub({ pr = prData(), files = [file('Asset/data/a.mcfunction')], reviews = [], comments = [],
  compare = null, commits = [], created = [], replies = [], user = 'reviewer' } = {}) {
  const github = {
    rest: {
      pulls: {
        get: async () => ({ data: pr }),
        listFiles: Symbol('listFiles'),
        listReviews: Symbol('listReviews'),
        listReviewComments: Symbol('listReviewComments'),
        listCommits: Symbol('listCommits'),
        createReview: async params => created.push(params),
        createReplyForReviewComment: async params => replies.push(params),
      },
      issues: { listComments: Symbol('listComments') },
      repos: {
        compareCommitsWithBasehead: async () => {
          if (compare === null) throw new Error('not found');
          return { data: compare };
        },
      },
      users: { getAuthenticated: async () => ({ data: { login: user } }) },
    },
    paginate: async method => {
      const lists = new Map([
        [github.rest.pulls.listFiles, files], [github.rest.pulls.listReviews, reviews],
        [github.rest.pulls.listReviewComments, comments], [github.rest.pulls.listCommits, commits],
        [github.rest.issues.listComments, []],
      ]);
      assert.ok(lists.has(method));
      return lists.get(method);
    },
  };
  return github;
}

function fakeCore() {
  const outputs = {};
  const core = {
    outputs, failed: null, summaries: [],
    info() {}, warning() {},
    setOutput: (name, value) => { outputs[name] = value; },
    setFailed: message => { core.failed = message; },
    summary: {
      addHeading(text) { core.summaries.push(text); return this; },
      addCodeBlock(text) { core.summaries.push(text); return this; },
      async write() {},
    },
  };
  return core;
}

const commit = (sha, parents = 1) => ({
  sha, parents: Array(parents).fill({}),
  commit: { message: 'msg', author: { name: 'a' }, committer: { date: '2026-10-30T00:00:00Z' } },
});
const aiReview = (id, body, commit_id = OLD) => ({
  id, user: { login: 'reviewer' }, body, commit_id, submitted_at: '2026-10-29T00:00:00Z', state: 'COMMENTED',
});
const noFindings = `${common.DISCLAIMER}\n\n指摘はありません。`;
const findings = `${common.DISCLAIMER}\n\n指摘が 1 件あります。詳細は行コメントに書いています。\n\n- 〔不具合〕弾が当たらない`;

test('diff hash ignores file order and marker round-trips', () => {
  const files = [file('b'), file('a', 'x', 'old')];
  assert.equal(common.diffHash(files), common.diffHash([...files].reverse()));
  assert.notEqual(common.diffHash(files), common.diffHash([file('b'), file('a', 'y', 'old')]));
  const hash = common.diffHash(files);
  assert.deepEqual(common.parseMarker(`text\n\n${common.marker(HEAD, hash)}`), { head: HEAD, diff: hash });
  assert.equal(common.parseMarker('no marker'), null);
});

test('drafts, forks, closed PRs and the poster\'s own PRs are skipped', async () => {
  for (const overrides of [
    { draft: true }, { state: 'closed' }, { base: { ref: 'dev', sha: BASE } },
    { head: { sha: HEAD, repo: { full_name: 'someone/Example' } } }, { head: { sha: HEAD, repo: null } },
    { user: { login: 'reviewer' } },
  ]) {
    const core = fakeCore();
    await collect({ github: fakeGithub({ pr: prData(overrides) }), context: { repo, payload: { pull_request: { number: 7 } } }, core, outDir: tmp() });
    assert.equal(core.outputs.run, 'false');
  }
});

test('a first review collects the context and allows verification for datapack-only changes', async () => {
  const core = fakeCore();
  const outDir = tmp();
  await collect({
    github: fakeGithub({ commits: [commit(HEAD)] }),
    context: { repo, payload: { inputs: { pull_request: '7' } } }, core, outDir,
  });
  assert.equal(core.outputs.run, 'true');
  assert.equal(core.outputs.head, HEAD);
  const meta = read(outDir, 'meta.json');
  assert.equal(meta.mode, 'initial');
  assert.equal(meta.dataOnly, true);
  assert.equal(meta.lastReviewedHead, null);
  assert.equal(read(outDir, 'commits.json').length, 1);
});

test('changes outside the datapack or an incomplete listing disable verification', async () => {
  for (const [files, changed] of [
    [[file('Asset/data/a'), file('scripts/run.sh')], 2],
    [[file('Asset/data/a', 'x', 'scripts/old')], 1],
    [[file('Asset/data/a')], 2],
  ]) {
    const outDir = tmp();
    await collect({
      github: fakeGithub({ files, pr: prData({ changed_files: changed }) }),
      context: { repo, payload: { pull_request: { number: 7 } } }, core: fakeCore(), outDir,
    });
    assert.equal(read(outDir, 'meta.json').dataOnly, false);
  }
});

test('a follow-up is skipped when the diff is unchanged since the last marked post', async () => {
  const files = [file('Asset/data/a')];
  const body = `${findings}\n\n${common.marker(OLD, common.diffHash(files))}`;
  const core = fakeCore();
  await collect({
    github: fakeGithub({ files, reviews: [aiReview(1, body)] }),
    context: { repo, payload: { pull_request: { number: 7 } } }, core, outDir: tmp(),
  });
  assert.equal(core.outputs.run, 'false');
});

test('a follow-up collects AI threads and the commits since the last reviewed head', async () => {
  const comments = [
    { id: 10, pull_request_review_id: 1, in_reply_to_id: null, user: { login: 'reviewer' }, body: 'finding', path: 'Asset/data/a', line: 3, created_at: '2026-10-29T00:00:00Z' },
    { id: 11, pull_request_review_id: 2, in_reply_to_id: 10, user: { login: 'author' }, body: 'fixed', created_at: '2026-10-29T01:00:00Z' },
    { id: 20, pull_request_review_id: 3, in_reply_to_id: null, user: { login: 'other' }, body: 'nit', path: 'Asset/data/b', line: 1, created_at: '2026-10-29T02:00:00Z' },
  ];
  const outDir = tmp();
  const core = fakeCore();
  await collect({
    github: fakeGithub({
      reviews: [aiReview(1, findings), { id: 3, user: { login: 'other' }, body: 'LGTM', state: 'COMMENTED' }],
      comments, compare: { status: 'ahead', commits: [commit(HEAD), commit('d'.repeat(40), 2)] },
    }),
    context: { repo, payload: { pull_request: { number: 7 } } }, core, outDir,
  });
  assert.equal(core.outputs.run, 'true');
  const meta = read(outDir, 'meta.json');
  assert.equal(meta.mode, 'followup');
  assert.equal(meta.lastReviewedHead, OLD);
  const threads = read(outDir, 'threads.json');
  assert.deepEqual(threads.map(thread => [thread.id, thread.replies.map(reply => reply.id)]), [[10, [11]]]);
  assert.deepEqual(read(outDir, 'discussion.json').comments.map(comment => comment.id), [20]);
  assert.deepEqual(read(outDir, 'commits.json').map(item => item.merge), [false, true]);
});

test('a follow-up falls back to all commits after a force push', async () => {
  const outDir = tmp();
  await collect({
    github: fakeGithub({ reviews: [aiReview(1, findings)], compare: { status: 'diverged', commits: [] }, commits: [commit(HEAD)] }),
    context: { repo, payload: { pull_request: { number: 7 } } }, core: fakeCore(), outDir,
  });
  assert.equal(read(outDir, 'meta.json').lastReviewedHead, null);
  assert.equal(read(outDir, 'commits.json').length, 1);
});

const meta = (mode = 'initial') => ({ number: 7, head: HEAD, mode, diffHash: 'e'.repeat(64) });
const inline = { path: 'Asset/data/a.mcfunction', line: 4, body: '`@s` が対象を選ばない' };

test('the review format is enforced', () => {
  const ids = new Set([10]);
  const ok = (result, mode) => assert.deepEqual(validate({ headSha: HEAD, replies: [], ...result }, meta(mode), ids), []);
  const bad = (result, mode) => assert.ok(validate({ headSha: HEAD, replies: [], ...result }, meta(mode), ids).length > 0);
  ok({ review: { body: noFindings, comments: [] } });
  ok({ review: { body: findings, comments: [inline] } });
  ok({ review: null, replies: [{ inReplyTo: 10, body: '修正を確認しました。弾の件は解消されていて、この指摘への対応として問題ありません。' }] }, 'followup');
  bad({ review: null });
  bad({ review: { body: `x\n\n指摘はありません。`, comments: [] } });
  bad({ review: { body: noFindings, comments: [inline] } });
  bad({ review: { body: `${noFindings}\n\n確認した範囲`, comments: [] } });
  bad({ review: { body: noFindings, comments: [] } }, 'followup');
  bad({ review: { body: findings, comments: [] } });
  bad({ review: { body: `${findings}\n- 〔軽微〕2件目`, comments: [inline] } });
  bad({ review: { body: findings, comments: [{ ...inline, line: 0 }] } });
  bad({ review: { body: findings, comments: [{ ...inline, body: '@someone 見てください' }] } });
  bad({ review: { body: findings, comments: [{ ...inline, body: 'sk-ant-oat01-abcdefghijkl' }] } });
  bad({ review: { body: `${noFindings}\n<!-- claude-review head=x -->`, comments: [] } });
  bad({ review: null, replies: [{ inReplyTo: 99, body: '解消' }] }, 'followup');
  bad({ review: null, replies: [{ inReplyTo: 10, body: '確認しました' }] }, 'followup');
  bad({ review: null, replies: [{ inReplyTo: 10, body: '解消' }, { inReplyTo: 10, body: '解消' }] }, 'followup');
  assert.ok(validate({ headSha: OLD, review: { body: noFindings, comments: [] }, replies: [] }, meta(), ids).length > 0);
});

function writeRun(result, mode = 'initial') {
  const contextDir = tmp();
  const outputDir = tmp();
  fs.writeFileSync(path.join(contextDir, 'meta.json'), JSON.stringify(meta(mode)));
  fs.writeFileSync(path.join(contextDir, 'threads.json'), JSON.stringify([{ id: 10 }]));
  fs.writeFileSync(path.join(outputDir, 'review.json'), JSON.stringify({ headSha: HEAD, replies: [], ...result }));
  return { contextDir, outputDir };
}

test('dry run reports the payload without posting', async t => {
  t.after(() => { delete process.env.POST_ENABLED; });
  const created = [];
  const core = fakeCore();
  await post({ github: fakeGithub({ created }), context: { repo }, core, ...writeRun({ review: { body: noFindings, comments: [] } }) });
  assert.equal(core.failed, null);
  assert.equal(created.length, 0);
  assert.match(core.summaries[1], /claude-review head=/);
});

test('posting adds the marker, keeps COMMENT and checks the account', async t => {
  process.env.POST_ENABLED = 'true';
  t.after(() => { delete process.env.POST_ENABLED; });
  const created = [];
  const replies = [];
  const run = writeRun({ review: { body: findings, comments: [{ ...inline, start_line: 2 }] },
    replies: [{ inReplyTo: 10, body: '修正を確認しましたが、弾の件は未解消です。' }] }, 'followup');
  await post({ github: fakeGithub({ created, replies }), context: { repo }, core: fakeCore(), ...run });
  assert.equal(created.length, 1);
  assert.equal(created[0].event, 'COMMENT');
  assert.equal(created[0].commit_id, HEAD);
  assert.ok(created[0].body.endsWith(common.marker(HEAD, 'e'.repeat(64))));
  assert.deepEqual([created[0].comments[0].side, created[0].comments[0].start_line, created[0].comments[0].start_side], ['RIGHT', 2, 'RIGHT']);
  assert.equal(replies.length, 1);
  assert.equal(replies[0].comment_id, 10);

  const core = fakeCore();
  const blocked = [];
  await post({ github: fakeGithub({ created: blocked, user: 'someone' }), context: { repo }, core, ...writeRun({ review: { body: noFindings, comments: [] } }) });
  assert.equal(blocked.length, 0);
  assert.match(core.failed, /belongs to someone/);
});

test('a new push or a rejected review.json is not posted', async () => {
  const created = [];
  await post({ github: fakeGithub({ created, pr: prData({ head: { sha: OLD, repo: null } }) }), context: { repo }, core: fakeCore(), ...writeRun({ review: { body: noFindings, comments: [] } }) });
  assert.equal(created.length, 0);
  const core = fakeCore();
  await post({ github: fakeGithub({ created }), context: { repo }, core, ...writeRun({ review: { body: 'hello', comments: [] } }) });
  assert.equal(created.length, 0);
  assert.match(core.failed, /rejected/);
});

test('the yomiyasu entry point only passes files under work/', () => {
  const { spawnSync } = require('node:child_process');
  const root = tmp();
  const scripts = path.join(root, '.ci/yomiyasu/skills/yomiyasu/scripts');
  fs.mkdirSync(scripts, { recursive: true });
  fs.mkdirSync(path.join(root, 'work/drafts'), { recursive: true });
  for (const name of ['yomiyasu_lint.py', 'yomiyasu_check.py']) {
    fs.writeFileSync(path.join(scripts, name), `import sys\nprint('${name}', *sys.argv[1:])\n`);
  }
  const entry = path.resolve(__dirname, '../claude-review/yomiyasu.py');
  const run = (...args) => spawnSync('python3', [entry, ...args], { cwd: root, encoding: 'utf8' });

  assert.equal(run('lint', '--doc-type', 'pr', 'work/drafts/a.md').stdout.trim(), 'yomiyasu_lint.py --doc-type pr work/drafts/a.md');
  assert.equal(run('check', 'run', '--source', 'work/drafts/a.md', '--final=work/b.md', '--stance=説明', '--fact-gaps',
    '--material', 'work/m.txt').status, 0);
  assert.equal(run('check', 'verify', '--final', 'work/b.md').status, 0);
  for (const args of [
    ['lint', '/proc/1/environ'], ['lint', 'work/../outside.md'], ['lint', '-'], ['lint'],
    ['lint', '--words', 'work/x', 'work/a.md'], ['check', 'run', '--source', '/proc/1/environ', '--final', 'work/b.md'],
    ['check', 'run', '--stdin'], ['check', 'start', '--source', 'work/a.md'], ['check', 'run', '--final'],
    ['check', 'run', '--fact-gaps=1', '--final', 'work/b.md'], ['other'],
  ]) {
    const result = run(...args);
    assert.equal(result.status, 2, args.join(' '));
    assert.equal(result.stdout, '');
  }
});
