# Effectの設計と実装

Effectの定義・継承・Field・イベントを変更するときの入口。個別Asset間の連携は [カテゴリ間の契約](object-model.md#カテゴリごとの違い)、神器からの付与・装備解除との分担は [装備と効果の寿命](artifact.md#装備と効果の寿命を分ける) を参照する。本体APIとイベント配送の正本は、利用するTheSkyBlessingの `docs/knowledge/asset-runtime.md` にある。

## 説明文は効果の性質を記述する

Effectの `Description` には、倍率・割合・秒数などの具体的な数値を書かず、効果の性質を説明する。数値を説明文にも重ねて持つと、調整時に実装との不一致が生じやすくなるためである。「被ダメージを軽減する」「与ダメージが増加する」のように記述する。この方針はEffectの `Description` が対象で、効果を決める設定値や補正値を省略するものではない。

## 定義・継承・インスタンス

Effect のインスタンスは、エンティティ本体ではなく個体の OhMyDat `Effects[]` の各要素である。各要素が ID、Duration、Stack、Field 等を持つ。イベント時にその要素の Field が `this` に展開され、処理後に要素へ戻される。

Mob／Object の数値 alias と親配列探索ではなく、function tag の ID 条件付き wrapper と、ROM に記録した単一親チェーンで register／固定イベントを解決する。イベントは given、re-given、tick、remove、end。Mob／Object の任意メソッドや同じスタック構成を前提にしない。

例として [0079.poison の register](../../Asset/data/asset/functions/effect/0079.poison/register.mcfunction) は [0029.poison の register](../../Asset/data/asset/functions/effect/0029.poison/register.mcfunction) を継承し、ID と解除条件を上書きする。子に tick 実装がなく、[親の tick](../../Asset/data/asset/functions/effect/0029.poison/tick/.mcfunction) が継承した個体 Field の `this.Tick` を更新する。

再付与時の `PreviousField` は旧 Field の snapshot であり、永続フィールドそのものではない。前回 stack と今回 stack の境界を検出する既存セット Effect は、given/re-given の末尾で現在値を `this.PrevStack` に保存する。解除レベルは Wiki が Lv4 を「運用上未使用」とする一方、現行 `0244.aurora_armor` と `0246.flame_devil_armor` は `RequireClearLv 4` を使うため、その記述は現状には採用しない。

## 付与元で調整値を指定する

神器ごとの補正量・効果時間は、付与元から公開give APIの `Argument.Duration` と `Argument.FieldOverride` で渡せる。Effectは受け取った値で補正や後続効果を処理する。これにより、調整する値を神器側にまとめつつ、接触・解除などの振る舞いをEffect自身に保てる。APIの引数と再付与時のFieldの契約は、依存先TheSkyBlessingの `docs/knowledge/asset-runtime.md` を参照する。

[双律の印章の付与処理](../../Asset/data/asset/functions/artifact/1412.seal_of_dual_rhythm/trigger/3.main.mcfunction) は、軽減のDurationと次のFieldを399へ渡す。399〜401を直接付与する場合も、呼出側がDurationと必要なFieldを指定する。

| Effect | FieldOverrideの必須項目 | 意味 |
| --- | --- | --- |
| 399 | `Amount`（double） | 被ダメージの軽減割合 |
| 399 | `BoostAmount`（double） | 接触相手の与ダメージの増加割合 |
| 399 | `BoostDuration`（int） | 接触相手の攻撃強化の時間（tick） |
| 399 | `Cooldown`（int） | 軽減の再付与を待つ時間（tick） |
| 400 | `Amount`（double） | 与ダメージの増加割合 |
| 401 | なし | Durationで再付与までの待ち時間を指定 |

399は接触時にBoostAmount・BoostDurationを400へ、Cooldownを401へ引き継ぐ。399〜401のregisterにはDurationや調整用のMaxDurationを重ねて定義しない。上限は本体の既定値を使い、付与元で時間を延ばしても旧設定値で切り詰められないようにする。

## 接触対象から付与先自身を除外する

Effectイベント中の自己除外には、本体が付与先へ付ける `this` タグを使える。[399の接触判定](../../Asset/data/asset/functions/effect/0399.dual_rhythm_guard/tick/contact.mcfunction) は `tag=!this` で対象から外し、自己除外専用タグの追加・削除を持たない。`this` の管理は本体へ委ねる。この実装はEffectイベントへの `this` 付与・公開に対応した本体が前提で、未対応版では自己除外にならない。付与区間と実行主体の契約は、依存先TheSkyBlessingの `docs/knowledge/asset-runtime.md`「付与要求とイベント配送」を参照する。

## `_` 配下は定型の入口に限定する

`_/given.mcfunction` 等は、対応するfunction tagから呼ばれ、IDを判定して同名イベントの `given/` 等へ渡す定型ファイルである。レビュー時に入口の形を毎回読み解かなくて済むよう、この形を厳守する（ユーザー方針）。`_` から `modifier/*` やAPI・別イベントを直接呼ばず、処理や固有条件も書かない。registerの入口は同じID判定で直下の `register` を呼ぶ。

実例は [0001のend入口](../../Asset/data/asset/functions/effect/0001.attack_base_debuff/_/end.mcfunction) → [endの処理](../../Asset/data/asset/functions/effect/0001.attack_base_debuff/end/.mcfunction)。共通の補正処理を呼ぶ場合も、必ずイベントの `/.mcfunction` を経由する。処理先の `@within` はこのイベント関数を指定し、定型入口から直接呼べる宣言を残さない。入口の確認では、コメント以外がID判定と所定の関数呼出しの1行だけであること、イベント名・ID・参照先が一致することを照合する。

## 再付与で補正を確実に設定する

複数の発動元から同じ非スタック型バフを付与できる場合、最初のgivenを必ず通る前提で初期化しない。付与要求とイベント配送の契約は、依存先TheSkyBlessingの `docs/knowledge/asset-runtime.md` にある。最初のgiven前に再付与される経路では、re-givenだけでも必要な補正が設定されるようにする。

非スタック型バフでは、givenとre-givenの両方から同じUUID・補正値を設定し、必要な状態を作る方法が使える。重複させずに同じ最終状態へ戻せる根拠は、本体の `docs/knowledge/architecture.md`「能力補正は識別できる寄与から組み立てる」にある。終了時も自分のUUIDだけを解除する。同じEffectの共有補正を表すUUIDであることが条件で、付与元ごとの独立した重ね掛けが必要なら、同一UUIDによる置換をそのまま採用しない。

[攻撃力低下のgiven](../../Asset/data/asset/functions/effect/0001.attack_base_debuff/given/.mcfunction) と [re-given](../../Asset/data/asset/functions/effect/0001.attack_base_debuff/re-given/.mcfunction) は、どちらからも現在Stackに応じた補正を設定する実例である。後者は同じUUIDの補正を解除してから設定する。非スタック型で固定値を設定する場合と、Stackに応じて値を作り直す場合を区別する。

[0400 双律・攻の補正設定](../../Asset/data/asset/functions/effect/0400.dual_rhythm_boost/modifier/add.mcfunction) はgivenとre-givenから同じUUIDへ `this.Amount` を設定する。初回given前の再付与でも補正を作り、適用済みの効果に異なるAmountを渡した場合は、その値へ置き換える。再付与を演出だけにすると、前者では補正が欠け、後者では以前の補正量が残る。

Fieldの蓄積やstack差分を扱う効果では、現在値の再設定だけでは履歴を保てない。`PreviousField` と初期値の扱いを含めてgiven/re-givenを設計する。「何度呼ばれても最終状態を揃える処理」と「今回分を追加する処理」を分け、すべてのEffectを同じ補正設定方式に統一しない。

## 付与元と付与先の終了条件を別々に決める

他人へ効果を付与する仕様では、「付与元が死亡・装備解除したとき」と「付与先が死亡したとき」を分けて設計する。別の相手へgiveする処理は、その付与先での新規付与・再付与であり、付与元のEffect個体を移動する処理ではない。本体が判定する死亡時の対象はEffectの付与先である。契約は依存先TheSkyBlessingの `docs/knowledge/asset-runtime.md` を参照する。

付与元の死亡と連動して相手の効果も消す仕様なら、付与元との関連付けとその終了を伝える処理が別途必要になる。連動しない仕様で、全員の同IDのEffectを一括削除しない。また、効果の発動と死亡・装備解除による終了を同じ処理にまとめると、発動していないのに別の効果や待機状態を生成し得る。発動時の処理と共通の後始末を分ける。

## 自己終了は本体の契約に合わせる

Effectがイベント中に自身を消費する場合、終了の要求、データの書き戻し、remove/end、後始末の順を確認する。契約の正本は依存先TheSkyBlessingの `docs/knowledge/asset-runtime.md`。利用する本体の作業コピーでAPIと終了判定を照合し、その順序に合わせて自身が所有する補正を解除する。

手動で補正を解除した後に終了イベントでも後始末を行う設計では、同じ解除を繰り返せるかを確認する。UUIDを指定した補正解除と、アイテム消費・報酬・別Effectの付与では副作用が異なる。終了イベントの配送順は本体の実装に依存するため、特定の版で動く自己終了処理をそのまま他の版へ移植しない。

[399の接触移譲](../../Asset/data/asset/functions/effect/0399.dual_rhythm_guard/tick/transfer.mcfunction) は、自身のIDを指定して `remove/from_id` を呼ぶ。軽減補正の解除は [removeイベント](../../Asset/data/asset/functions/effect/0399.dual_rhythm_guard/remove/.mcfunction) に任せ、移譲処理では手動解除や `context.Duration=0` の設定を行わない。この実装には、イベント中の自己removeに対応した本体が必要である。削除予約後も移譲処理は続くため、相手への攻撃強化と自身へのクールダウンを付与してから、removeイベントで補正を解除する。
