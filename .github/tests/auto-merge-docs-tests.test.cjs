const assert = require('node:assert/strict');
const { readFileSync } = require('node:fs');
const { resolve } = require('node:path');
const { test } = require('node:test');

const workflow = readFileSync(resolve(__dirname,
  '../workflows/auto-merge-docs-tests.yml'), 'utf8').replace(/\r\n/g, '\n');
const script = workflow.split('          script: |\n')[1]
  .split('\n').map(line => line.replace(/^ {12}/, '')).join('\n');
const run = new (Object.getPrototypeOf(async function () {}).constructor)(
  'github', 'context', 'core', 'exec', script);

const file = (filename, previous_filename) => ({ filename, previous_filename });
async function inspect(files, overrides = {}, changes = {}, options = {}) {
  const pr = {
    number: 42, state: 'open', draft: false, changed_files: files.length,
    head: { sha: 'head' }, base: { ref: 'master', sha: 'base' },
    title: 'Update documentation', auto_merge: null, ...overrides,
  };
  let reads = 0;
  const calls = [];
  const reviews = options.reviews ?? [];
  const created = options.created ?? [];
  const dismissed = options.dismissed ?? [];
  const github = {
    rest: { pulls: {
      get: async () => ({ data: reads++ ? { ...pr, ...changes } : pr }),
      listFiles: Symbol('listFiles'),
      listReviews: Symbol('listReviews'),
      createReview: async params => created.push(params),
      dismissReview: async params => dismissed.push(params),
    } },
    paginate: async (method, params) => {
      if (method === github.rest.pulls.listReviews) return reviews;
      assert.equal(method, github.rest.pulls.listFiles);
      assert.equal(params.per_page, 100);
      return files;
    },
    request: async () => ({ data: [{ type: 'pull_request', parameters: {
      dismiss_stale_reviews_on_push: options.dismissStale ?? true,
    } }] }),
  };
  await run(github, {
    repo: { owner: 'ProjectTSB', repo: 'Example' },
    payload: { pull_request: { number: 42 } },
  }, { info() {} }, {
    exec: async (command, args) => calls.push([command, ...args]),
  });
  return calls;
}

test('docs/tests only enables squash auto-merge for the inspected commit', async () => {
  const calls = await inspect([file('docs/nested/guide.md'), file('tests/case.json')]);
  assert.equal(calls.length, 1);
  assert.deepEqual(calls[0].slice(0, 10), [
    'gh', 'pr', 'merge', '42', '--repo', 'ProjectTSB/Example',
    '--auto', '--squash', '--match-head-commit', 'head',
  ]);
  assert.equal(calls[0][11], '✅ Update documentation (#42)');
});

test('docs-only merge subject starts with the documentation Gitmoji', async () => {
  const calls = await inspect([file('docs/guide.md')]);
  assert.equal(calls[0][11], '📝 Update documentation (#42)');
});

test('mixed changes, root documents, empty and partial listings are excluded', async () => {
  for (const files of [
    [], [file('README.md')], [file('docs-old/file')],
    [file('docs/guide.md'), file('pack/data/main.mcfunction')],
    [file('docs/guide.md'), file('.github/CODEOWNERS')],
    [file('docs/guide.md'), file('.github/workflows/check.yml')],
  ]) assert.deepEqual(await inspect(files), []);
  assert.deepEqual(await inspect([file('docs/guide.md')], { changed_files: 3001 }), []);
});

test('a code file moved into docs remains excluded', async () => {
  assert.deepEqual(await inspect([file('docs/main', 'pack/data/main')]), []);
  assert.deepEqual(await inspect([file('pack/data/main', 'docs/main')]), []);
  assert.equal((await inspect([file('docs/new', 'tests/old')])).length, 1);
});

test('all pages are considered, including disallowed files after the first 100', async () => {
  const files = Array.from({ length: 101 }, (_, i) => file(`docs/${i}.md`));
  assert.equal((await inspect(files)).length, 1);
  files.push(file('pack/data/main.mcfunction'));
  assert.deepEqual(await inspect(files), []);
});

test('draft, closed and other base branches are excluded', async () => {
  for (const overrides of [
    { draft: true }, { state: 'closed' }, { base: { ref: 'release', sha: 'base' } },
  ]) assert.deepEqual(await inspect([file('docs/guide.md')], overrides), []);
});

test('concurrent head/base/draft/file-count changes invalidate the decision', async () => {
  for (const changes of [
    { head: { sha: 'new' } }, { base: { ref: 'master', sha: 'new' } },
    { base: { ref: 'release', sha: 'base' } }, { draft: true },
    { changed_files: 2 }, { state: 'closed' },
  ]) assert.deepEqual(await inspect([file('docs/guide.md')], {}, changes), []);
});

test('ineligible changes disable bot auto-merge but preserve maintainer requests', async () => {
  const files = [file('pack/data/main.mcfunction')];
  assert.deepEqual(await inspect(files, {
    auto_merge: { enabled_by: { login: 'github-actions[bot]' } },
  }), [['gh', 'pr', 'merge', '42', '--repo', 'ProjectTSB/Example', '--disable-auto']]);
  assert.deepEqual(await inspect(files, {
    auto_merge: { enabled_by: { login: 'maintainer' } },
  }), []);
});

test('an existing auto-merge request is left intact', async () => {
  assert.deepEqual(await inspect([file('docs/guide.md')], {
    auto_merge: { enabled_by: { login: 'github-actions[bot]' } },
  }), []);
});

test('paths a person has to merge are excluded, individual notes are not', async () => {
  for (const files of [
    [file('docs/knowledge/README.md')],
    [file('docs/guide.md'), file('docs/knowledge/README.md')],
    [file('docs/knowledge/entry.md', 'docs/knowledge/README.md')],
    [file('docs/knowledge/README.md', 'docs/knowledge/entry.md')],
    [file('.github/workflows/auto-merge-docs-tests.yml')],
  ]) assert.deepEqual(await inspect(files), []);
  for (const files of [
    [file('docs/knowledge/notes/motion/no-inertia-tp-roundtrip.md')],
    [file('docs/knowledge/notes/motion/new.md', 'docs/knowledge/notes/motion/old.md')],
    [file('docs/knowledge/README-of-notes.md')],
  ]) assert.equal((await inspect(files)).length, 1);
});

test('paths a person has to merge never receive bot approval', async () => {
  const created = [];
  await inspect([file('docs/knowledge/README.md')], {}, {}, { created });
  assert.deepEqual(created, []);
});

test('PR title is one literal process argument', async () => {
  const title = 'Literal `command` $(command) ${{ secrets.TOKEN }}';
  const calls = await inspect([file('docs/guide.md')], { title });
  assert.equal(calls[0][11], `📝 ${title} (#42)`);
});

const botReview = (overrides = {}) => ({
  id: 1, user: { login: 'github-actions[bot]' }, state: 'APPROVED', commit_id: 'head',
  body: 'Automatically approved: changes are limited to docs/ and tests/.',
  ...overrides,
});

test('docs/tests receives approval for the inspected commit', async () => {
  const created = [];
  await inspect([file('docs/guide.md')], {}, {}, { created });
  assert.equal(created.length, 1);
  assert.equal(created[0].event, 'APPROVE');
  assert.equal(created[0].commit_id, 'head');
});

test('code and mixed changes never receive bot approval', async () => {
  const created = [];
  await inspect([file('docs/guide.md'), file('pack/main.mcfunction')], {}, {}, { created });
  assert.deepEqual(created, []);
});

test('auto-approval is refused without stale-review dismissal', async () => {
  const created = [];
  await assert.rejects(inspect([file('docs/guide.md')], {}, {}, {
    created, dismissStale: false,
  }), /dismissal of stale reviews/);
  assert.deepEqual(created, []);
});

test('current approval is not duplicated; dismissed or older approvals are renewed', async () => {
  for (const [review, count] of [
    [botReview(), 0], [botReview({ state: 'DISMISSED' }), 1],
    [botReview({ commit_id: 'old' }), 1],
  ]) {
    const created = [];
    await inspect([file('docs/guide.md')], { auto_merge: {} }, {}, {
      created, reviews: [review],
    });
    assert.equal(created.length, count);
  }
});

test('ineligible PR dismisses only approvals from this automation', async () => {
  const dismissed = [];
  await inspect([file('pack/main.mcfunction')], {}, {}, {
    dismissed, reviews: [botReview(),
      botReview({ id: 2, user: { login: 'maintainer' } }),
      botReview({ id: 3, body: 'Other automation' })],
  });
  assert.deepEqual(dismissed.map(review => review.review_id), [1]);
});

test('the Actions bot does not attempt to approve its own PR', async () => {
  const created = [];
  await inspect([file('docs/guide.md')], {
    user: { login: 'github-actions[bot]' },
  }, {}, { created });
  assert.deepEqual(created, []);
});
