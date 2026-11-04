---
title: tp後の演出で移動前の実行位置を使う
description: tp直後に音や軌跡などの演出を出すとき、移動元と移動先のどちらの位置で実行するか判断するために読む
area: motion
paths:
  - Asset/data/asset/functions/mob/0392.ecual_first/ai/general/3.teleport_effect/.mcfunction
ids:
  - mob:0392
related:
  - docs/knowledge/mob.md#独自移動とvanillaの移動を切り替える
  - DevSpace:docs/mcfunction-idioms.md#実行位置を移動前の値として保持する
---

# tp後の演出で移動前の実行位置を使う

tp後も呼出時の実行位置が移動前のまま残る仕組みは、DevSpaceの `docs/mcfunction-idioms.md`「実行位置を移動前の値として保持する」にある。[Ecual の転移演出](../../../../Asset/data/asset/functions/mob/0392.ecual_first/ai/general/3.teleport_effect/.mcfunction) は、tp直後に呼ばれ、通常のplaysoundで移動元、`execute at @s` 付きで移動先に音を出し、保持した位置から移動後の本人を向いて軌跡を描く。tp後だからと呼出し全体へ `at @s` を追加すると移動元を失う。古い文脈が意図的な入力か、取り直し漏れかを呼出側まで見て判断する。
