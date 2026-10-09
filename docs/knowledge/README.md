# Asset ナレッジ

この文書群は、現行リポジトリのコード、GitHub のレビュー・issue、ProjectTSB Wiki を照合した開発者向け案内である。レビューの提案、Wiki の設計意図、現行コードの挙動を区別する。

共通の開発規約・知識の更新方針はDevSpaceの `AGENTS.md` と `docs/knowledge-maintenance.md` にある。このディレクトリは、この作業コピーのコードに対応する構造・契約・実例を管理する。

## 読む文書を選ぶ

領域文書とノートの一覧・用途は、DevSpaceで次を実行して得るINDEXから選ぶ。INDEXのファイルや手書きの一覧は保存せず、この作業コピーのブランチのヘッダーから毎回生成する。

```sh
python3 scripts/knowledge/index.py <この作業コピー>
```

領域を絞るときは `--area <領域>`、ノートだけを見るときは `--notes-only` を付ける。スクリプトを使えない場合は、`docs/knowledge/*.md` と `docs/knowledge/notes/**/*.md` の先頭にある `title`・`description` を直接読む。ノートの形式、参照経路、機械的な検査、人がマージする範囲はDevSpaceの `docs/knowledge-notes.md` に従う。

領域文書は領域の全体像と入口、`notes/` 配下のノートは個別の判断（根拠・適用条件・適用外）を扱う。該当が見つからないときは領域を広げてINDEXを読み直し、コードと依存先の契約を確認してから知識の有無を判断する。

## 先に読む領域

- Mob／Objectの型・継承・Fieldを扱う場合は [object-model.md](object-model.md) を先に読む。カテゴリをまたぐ連携では [カテゴリ間の契約](object-model.md#カテゴリごとの違い) も確認する。
- Effectの定義・継承・Field・再付与・寿命を扱う場合は [effect.md](effect.md) を先に読む。
- 本体APIを利用する場合は、依存先TheSkyBlessingのナレッジと現行コードで契約を確認する。契約の正本は提供側にあり、ここには固有の利用例と参照先だけを置く。
- NBT・数値・selector・移動・幾何・displayの共通イディオムはDevSpaceの `docs/mcfunction-idioms.md` を用途から参照する。

## このrepoの前提

データパックはrepo内の `Asset/data/`、生成・更新処理は `scripts/` にある。artifact / effect / mob / object は4桁IDと名前を使い、追加時は既存IDとの重複、function tag・aliasと実装の対応を確認する。登録値のstorageと登録時点はカテゴリごとに異なるため、各領域の説明を参照する。
