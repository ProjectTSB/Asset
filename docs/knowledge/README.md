# Asset ナレッジ

この文書群は、現行リポジトリのコード、GitHub のレビュー・issue、ProjectTSB Wiki を照合した開発者向け案内である。レビューの提案、Wiki の設計意図、現行コードの挙動を区別する。

|目的|読む文書|
|---|---|
|Mob／Object／Effect の型・継承・インスタンス・メソッド（該当変更の前提）|[object-model.md](object-model.md)|
|アイテム定義、登録と artifact|[artifact.md](artifact.md)|
|Mob と AJ のライフサイクル|[mob.md](mob.md)|
|Object、API storage、生成・検証|[runtime-and-tools.md](runtime-and-tools.md)|
|ProjectTSB Wiki の作成意図と現行実装の差|[wiki-crosscheck.md](wiki-crosscheck.md)|
|調査範囲と直接根拠|[sources.md](sources.md)|

単独 clone でも読めるよう、参照は原則このリポジトリからの相対リンクにした。DevSpace の環境起動は、既存の共通 task がある場合はそれに委譲する。
