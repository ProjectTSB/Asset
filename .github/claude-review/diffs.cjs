// PRの差分と、前回AIが見たheadからの差分をファイルへ書き出す
// PRから取り出したファイルの名前はシェルを通さずgitの引数として渡す
const fs = require('node:fs');
const path = require('node:path');
const { execFileSync } = require('node:child_process');

const [repoDir, contextDir] = process.argv.slice(2);
const meta = JSON.parse(fs.readFileSync(path.join(contextDir, 'meta.json'), 'utf8'));
const files = JSON.parse(fs.readFileSync(path.join(contextDir, 'files.json'), 'utf8'));

function git(args) {
  return execFileSync('git', ['-C', repoDir, ...args], { maxBuffer: 512 * 1024 * 1024 });
}

// PRが分岐した位置からheadまでの差分とコミットの一覧
const mergeBase = git(['merge-base', 'HEAD', meta.base]).toString().trim();
fs.writeFileSync(path.join(contextDir, 'pr.diff'), git(['diff', mergeBase, 'HEAD']));
fs.writeFileSync(path.join(contextDir, 'pr-log.txt'),
  git(['log', '--format=%H %ad %an%n    %s', '--date=iso-strict', `${mergeBase}..HEAD`]));

// 前回のheadから辿れるときは、PRが変えたファイルに絞った差分も書き出す
if (meta.lastReviewedHead) {
  const paths = [];
  // 変更ファイルのパスを、gitがパスの特殊な書き方として解釈しない形で並べる
  for (const file of files) {
    paths.push(`:(literal)${file.filename}`);
    // 名前を変えたファイルは変更前の名前も加える
    if (file.previous_filename) {
      paths.push(`:(literal)${file.previous_filename}`);
    }
  }
  fs.writeFileSync(path.join(contextDir, 'since-last.diff'),
    git(['diff', meta.lastReviewedHead, 'HEAD', '--', ...paths]));
}
