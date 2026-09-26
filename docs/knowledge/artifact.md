# Artifact

artifact は `Asset/data/asset/functions/artifact/<4桁ID>.<name>/` に置く。入手用 item/名前/lore/slot 等は `give/2.give.mcfunction` に書く。`register.mcfunction` がある場合は rarity pool 等の登録用途であり、0057 でも RarityRegistry のみを扱い、0001 には存在しない。

Wiki の作成意図では `Trigger` は Lore 表示用であり、実際の発火経路は function tag に登録した `1.trigger` が決める。`ConsumeItem` も Lore 表示用で、在庫確認・消費は API を使う個別処理が必要である。表示定義だけを追加して実処理ができたと判断しない。

自動使用の trigger は `storage asset:context id{auto:<ID>}` を検査し、共通の `artifact/common/check_condition/auto` と `artifact/common/use/auto` に接続する実装が多い。レビューではこの接続、offhand の検知、selector の `limit=1`、表示説明と実計算値の一致が繰り返し確認されている（PR #7, #9, #22, #49）。ただしレビュー suggestion は採用結果をコードで確認してから規約化する。

`1.trigger` は ID 判定と次段への呼び出しだけにする（ユーザー方針）。固有条件は `2.check_condition`、効果は `3.main` 以降へ置く。既存例は下記の0057を参照する。

共通 check は信仰、各 cooldown、MP 等を判定し、成功を `CanUsed` tag で表す。追加条件は既存の成功を無条件に作り直さず、失敗時にその tag を外す。共通 use は MP・使用回数の消費、cooldown 開始、LatestUseTick と item NBT の更新に加え、後続 Damage API 用の `api:PersistentArgument.AdditionalMPHeal` を設定する。この値は通常の `Argument` cleanup と寿命が異なる。副 trigger で common use を省略する場合も「すでに別経路で消費済み」等の設計理由と、必要な persistent side effect の有無を確認する。

攻撃処理では `asset:context Attack` の `IsVanilla` 等を入力条件にし、`api: Argument.Damage`, `AttackType`, `ElementType`, `DeathMessage` を設定して API を呼ぶ。Difficulty 等を `api: Return` から読み、必要なら Temporary score を介して丸め・倍率計算する。使用回数や cooldown は対象 artifact と共通処理の既存例に合わせる。

`Equipment.Effects` は EffectAsset の付与・stack に接続し、`Equipment.Modifiers` は装備単位で直接集計される。4部位へ同じ modifier を書けば4回分になる一方、同じ Effect ID を使うセットは Effect の `MaxStack` と given/re-given/remove の遷移で成立・解除を管理する。Artifact 自体に Mob/Object 型の `extends` や任意 method dispatch があるという意味ではない。

`scripts/update-artifact-register.scala.sc` は各 artifact の register を解析して rarity registry 等を更新し、`check-artifact-level.sc` は spreadsheet 入力と register の rarity を照合する。register の有無や生成先を確認してから変更する。

新規追加時は同種の `give/` と `trigger/`、`tags/functions/artifact/give.json` を入口から追い、ID・タグ・説明・register を置換する。`1→2→3` の順序、成功時の CanUsed/cooldown、失敗時のタグ・context の後始末を既存例と照合する。説明の数値は score の境界と tick の実計算に合わせる。

手順の実例は [0057 elemental sword](../../Asset/data/asset/functions/artifact/0057.elemental_sword) を辿る。入口の `tags/functions/artifact/give.json` が `give/1.trigger` を列挙し、そこから `give/2.give` が呼ばれる。入手用定義は `give/2.give`、rarity poolは存在する場合だけ `register.mcfunction` を更新する。自動発動は `storage asset:context id{auto:ID}` を照合して `2.check_condition`、`3.main` へ進む。手動実行ではこのcontextが無いため、対応するイベント入力を用意して検証する。条件失敗時の `CanUsed`、cooldown、ローカルなTemporaryの残留が典型的な不具合である。4桁表記はこのrepoのディレクトリ慣行であり、storageへ書くID値はゼロ埋めしない整数である。

神器tickの対象状態と公開タグは、依存先TheSkyBlessingの `docs/knowledge/runtime-and-assets.md`「神器tickと死亡・スペクテイター」を参照する。装備回収と発動経路の停止を混同せず、仕様で必要な条件を `2.check_condition` に置く。
