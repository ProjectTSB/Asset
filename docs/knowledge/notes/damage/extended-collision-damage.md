---
title: 大きな敵への減衰をExtendedCollisionで判定する
description: 大きな敵への減衰を実装・変更するとき、全体を減らすか追加当たり判定の分だけ減らすか、補正を外してよいか、SDSで代えられるか判断するために読む
area: damage
paths:
  - Asset/data/asset/functions/object/1068.icicle/hit_entity/.mcfunction
  - Asset/data/asset/functions/object/1081.barrel/hit_entity/.mcfunction
  - Asset/data/asset/functions/object/1145.throwing_ark/hit_entity/.mcfunction
  - Asset/data/asset/functions/object/1040.thelema_persuit_sword/kill/.mcfunction
  - Asset/data/asset/functions/object/1142.raging_passion_pickaxe/hit_entity/.mcfunction
  - Asset/data/asset/functions/artifact/0172.icicle/give/2.give.mcfunction
  - Asset/data/asset/functions/artifact/0355.barrel/give/2.give.mcfunction
ids:
  - object:1068
  - object:1081
  - object:1145
  - object:1040
  - object:1142
  - artifact:0172
  - artifact:0355
  - artifact:0985
  - artifact:1033
  - artifact:1270
related:
  - docs/knowledge/artifact.md#範囲攻撃のダメージ計算と一撃の区切り
  - docs/knowledge/runtime-and-tools.md
  - TheSkyBlessing:docs/knowledge/runtime-components.md#mob共通の個体表現と追加当たり判定
---

# 大きな敵への減衰をExtendedCollisionで判定する

Loreに「大きな敵に対して大きく減衰する」と書く神器は、当たり判定の大きな敵と小さな敵で極端なダメージ差が発生するのを避けるため、大きな敵へのダメージを減らす（ユーザー確認済み）。例は [Icicle](../../../../Asset/data/asset/functions/artifact/0172.icicle/give/2.give.mcfunction)（0172）・[Barrel](../../../../Asset/data/asset/functions/artifact/0355.barrel/give/2.give.mcfunction)（0355）・0985・1033・1270である。大きな敵は、命中した範囲に追加当たり判定（`ExtendedCollision` tag を持つentity）が含まれるかで見分ける。本体だけに当たった場合と、追加当たり判定を持たない大型Mobには減衰しない。補正を不要として外さず、変えるときはLoreと実装を揃える。倍率は攻撃ごとに異なり（×0.09〜×0.25）、共通の係数はない。

既存の実装は、減衰を決める条件とダメージを与える対象の組み合わせで分かれる。

- 範囲内に追加当たり判定が一つでもあれば、範囲内の全対象を減らす。[Icicle](../../../../Asset/data/asset/functions/object/1068.icicle/hit_entity/.mcfunction)（×0.09）と0985の [Throwing Ark](../../../../Asset/data/asset/functions/object/1145.throwing_ark/hit_entity/.mcfunction)（×0.25）がこの形である。
- 範囲内に追加当たり判定があれば減衰を決め、範囲内で最も近い1体に与える。1033の [追撃の剣](../../../../Asset/data/asset/functions/object/1040.thelema_persuit_sword/kill/.mcfunction)（×0.2）がこの形で、ダメージを受ける1体が追加当たり判定とは限らない。
- 対象ごとに判定し、追加当たり判定の対象だけを減らす。[Barrel](../../../../Asset/data/asset/functions/object/1081.barrel/hit_entity/.mcfunction)（×0.125）は樽ごとに1体を選び、その対象が追加当たり判定のときだけ減らす。1270の [Raging Passion Pickaxe](../../../../Asset/data/asset/functions/object/1142.raging_passion_pickaxe/hit_entity/.mcfunction) は通常の対象と追加当たり判定の対象を分けて処理し、後者のダメージとMP回復量を×0.09にする。

範囲内の有無で減衰を決める前の二つの形では、追加当たり判定でない対象まで減ることがある。Icicleでは、これは狙いではないが同時に当たる状況はほぼ起きないため許容している（ユーザー確認済み）。対象範囲を広げる変更や、同時に当たりやすい新しい攻撃では、対象ごとに判定する形を検討する。

この減衰は `single_damage_session`（SDS）では代えられない。SDSは一つの区間の中で追加当たり判定を経由した重複を抑えるだけで、別々の命中処理をまとめない。例えばBarrelは範囲内のEnemyごとに樽を召喚し、樽ごとに命中処理とresetが走る。SDSで回数が変わる条件はArtifactの [範囲攻撃のダメージ計算と一撃の区切り](../../artifact.md#範囲攻撃のダメージ計算と一撃の区切り)、抑制の契約は依存先TheSkyBlessingの `docs/knowledge/runtime-components.md`「Mob：共通の個体表現と追加当たり判定」にある。
