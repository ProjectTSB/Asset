# Asset ナレッジ

この文書群は、現行リポジトリのコード、GitHub のレビュー・issue、ProjectTSB Wiki を照合した開発者向け案内である。レビューの提案、Wiki の設計意図、現行コードの挙動を区別する。

共通の開発規約・知識の更新方針はDevSpaceの `AGENTS.md` と `docs/knowledge-maintenance.md` にある。このディレクトリは、この作業コピーのコードに対応する構造・契約・実例を管理する。`sources.md` は結論の根拠・採用状況を確かめるための索引。

|目的|読む文書|
|---|---|
|Mob／Object／Effect の型・継承・インスタンス・メソッド（該当変更の前提）|[object-model.md](object-model.md)|
|アイテム定義、登録と artifact|[artifact.md](artifact.md)|
|Mob と AJ のライフサイクル|[mob.md](mob.md)|
|Object、API storage、スクリプトの作用先・生成・検証|[runtime-and-tools.md](runtime-and-tools.md)|
|ProjectTSB Wiki の作成意図と現行実装の差|[wiki-crosscheck.md](wiki-crosscheck.md)|
|調査範囲と直接根拠|[sources.md](sources.md)|

データパックはrepo内の `Asset/data/`、生成・更新処理は `scripts/` にある。artifact / effect / mob / object は4桁IDと名前を使い、追加時は既存IDとの重複、function tag・aliasと実装の対応を確認する。登録値のstorageと登録時点はカテゴリごとに異なるため、各領域の説明を参照する。

個別Asset間の連携は [カテゴリ間の契約](object-model.md#カテゴリごとの違い) を参照する。本体APIを利用する場合は、依存先のTheSkyBlessingのナレッジと現行コードで契約を確認する。
