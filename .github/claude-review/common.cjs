// AIレビューの投稿の形式と、過去の投稿を見分ける規則
const { createHash } = require('node:crypto');

const DISCLAIMER = 'このレビューはハルがAI自動レビューの動作テストのためにOpus5.5 Extra Highを使用してレビューを行なったものです。鵜呑みにせず、指摘を採用するかはお任せします。';
const MARKER_PATTERN = /<!-- claude-review head=([0-9a-f]{40}) diff=([0-9a-f]{64}) -->/;

// 投稿に埋め込む、レビューしたheadと差分を記録するHTMLコメント
function marker(head, diff) {
  return `<!-- claude-review head=${head} diff=${diff} -->`;
}

function parseMarker(body) {
  const match = MARKER_PATTERN.exec(String(body));
  // 記録がない投稿（Macから投稿した分）はnullを返す
  if (match === null) {
    return null;
  }
  return { head: match[1], diff: match[2] };
}

function poster() {
  const login = process.env.CLAUDE_REVIEW_POSTER;
  // 投稿用のアカウントが指定されていなければ、AIの投稿を見分けられないので止める
  if (!login) {
    throw new Error('CLAUDE_REVIEW_POSTER is not set');
  }
  return login;
}

function login(item) {
  // 削除されたアカウントの投稿はuserがnullになる
  if (item.user === null || item.user === undefined) {
    return '';
  }
  return item.user.login;
}

// 投稿用のアカウントが冒頭文から書いたレビューだけをAIのレビューとして扱う
function isAiReview(review, account) {
  return login(review) === account && String(review.body).startsWith(DISCLAIMER);
}

// PRの変更ファイルの一覧から、差分が変わったかを比べるためのハッシュを作る
function diffHash(files) {
  const rows = files.map(file => {
    let previous = '';
    // 名前を変えたファイルは変更前の名前も含める
    if (file.previous_filename) {
      previous = file.previous_filename;
    }
    return [file.filename, file.status, file.sha, previous];
  });
  rows.sort((a, b) => a[0].localeCompare(b[0]));
  return createHash('sha256').update(JSON.stringify(rows)).digest('hex');
}

module.exports = { DISCLAIMER, marker, parseMarker, poster, login, isAiReview, diffHash };
