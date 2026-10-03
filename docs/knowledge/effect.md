# Effectの設計と実装

Effectの定義・継承・Field・イベントを変更するときの入口。個別Asset間の連携は [カテゴリ間の契約](object-model.md#カテゴリごとの違い)、神器からの付与・装備解除との分担は [装備と効果の寿命](artifact.md#装備と効果の寿命を分ける) を参照する。本体APIとイベント配送の正本は、利用するTheSkyBlessingの `docs/knowledge/asset-runtime.md` にある。

## 定義・継承・インスタンス

Effect のインスタンスは、エンティティ本体ではなく個体の OhMyDat `Effects[]` の各要素である。各要素が ID、Duration、Stack、Field 等を持つ。イベント時にその要素の Field が `this` に展開され、処理後に要素へ戻される。

Mob／Object の数値 alias と親配列探索ではなく、function tag の ID 条件付き wrapper と、ROM に記録した単一親チェーンで register／固定イベントを解決する。イベントは given、re-given、tick、remove、end。Mob／Object の任意メソッドや同じスタック構成を前提にしない。

例として [0079.poison の register](../../Asset/data/asset/functions/effect/0079.poison/register.mcfunction) は [0029.poison の register](../../Asset/data/asset/functions/effect/0029.poison/register.mcfunction) を継承し、ID と解除条件を上書きする。子に tick 実装がなく、[親の tick](../../Asset/data/asset/functions/effect/0029.poison/tick/.mcfunction) が継承した個体 Field の `this.Tick` を更新する。

再付与時の `PreviousField` は旧 Field の snapshot であり、永続フィールドそのものではない。前回 stack と今回 stack の境界を検出する既存セット Effect は、given/re-given の末尾で現在値を `this.PrevStack` に保存する。解除レベルは Wiki が Lv4 を「運用上未使用」とする一方、現行 `0244.aurora_armor` と `0246.flame_devil_armor` は `RequireClearLv 4` を使うため、その記述は現状には採用しない。

## 再付与で補正を確実に設定する

複数の発動元から同じ非スタック型バフを付与できる場合、最初のgivenを必ず通る前提で初期化しない。付与要求とイベント配送の契約は、依存先TheSkyBlessingの `docs/knowledge/asset-runtime.md` にある。最初のgiven前に再付与される経路では、re-givenだけでも必要な補正が設定されるようにする。

非スタック型バフでは、givenとre-givenの両方から同じUUID・補正値を設定し、必要な状態を作る方法が使える。重複させずに同じ最終状態へ戻せる根拠は、本体の `docs/knowledge/architecture.md`「能力補正は識別できる寄与から組み立てる」にある。終了時も自分のUUIDだけを解除する。同じEffectの共有補正を表すUUIDであることが条件で、付与元ごとの独立した重ね掛けが必要なら、同一UUIDによる置換をそのまま採用しない。

[攻撃力低下のgiven](../../Asset/data/asset/functions/effect/0001.attack_base_debuff/given/.mcfunction) と [re-given](../../Asset/data/asset/functions/effect/0001.attack_base_debuff/re-given/.mcfunction) は、どちらからも現在Stackに応じた補正を設定する実例である。後者は同じUUIDの補正を解除してから設定する。非スタック型で固定値を設定する場合と、Stackに応じて値を作り直す場合を区別する。

Fieldの蓄積やstack差分を扱う効果では、現在値の再設定だけでは履歴を保てない。`PreviousField` と初期値の扱いを含めてgiven/re-givenを設計する。「何度呼ばれても最終状態を揃える処理」と「今回分を追加する処理」を分け、すべてのEffectを同じ補正設定方式に統一しない。

## 付与元と付与先の終了条件を別々に決める

他人へ効果を付与する仕様では、「付与元が死亡・装備解除したとき」と「付与先が死亡したとき」を分けて設計する。別の相手へgiveする処理は、その付与先での新規付与・再付与であり、付与元のEffect個体を移動する処理ではない。本体が判定する死亡時の対象はEffectの付与先である。契約は依存先TheSkyBlessingの `docs/knowledge/asset-runtime.md` を参照する。

付与元の死亡と連動して相手の効果も消す仕様なら、付与元との関連付けとその終了を伝える処理が別途必要になる。連動しない仕様で、全員の同IDのEffectを一括削除しない。また、効果の発動と死亡・装備解除による終了を同じ処理にまとめると、発動していないのに別の効果や待機状態を生成し得る。発動時の処理と共通の後始末を分ける。

## 自己終了は本体の契約に合わせる

Effectがイベント中に自身を消費する場合、終了の要求、データの書き戻し、remove/end、後始末の順を確認する。契約の正本は依存先TheSkyBlessingの `docs/knowledge/asset-runtime.md`。利用する本体の作業コピーでAPIと終了判定を照合し、その順序に合わせて自身が所有する補正を解除する。

手動で補正を解除した後に終了イベントでも後始末を行う設計では、同じ解除を繰り返せるかを確認する。UUIDを指定した補正解除と、アイテム消費・報酬・別Effectの付与では副作用が異なる。終了イベントの配送順は本体の実装に依存するため、特定の版で動く自己終了処理をそのまま他の版へ移植しない。
