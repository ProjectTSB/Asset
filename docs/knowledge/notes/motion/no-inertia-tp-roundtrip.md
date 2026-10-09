---
title: 移動の慣性だけを消すtpの往復
description: 移動を止める実装・レビューで、視点の慣性と移動前の文脈を残すか判断するときに読む
area: motion
paths:
  - Asset/data/asset/functions/artifact/0745.blade_of_whirlwind/trigger/3.main.mcfunction
related:
  - docs/knowledge/runtime-and-tools.md
  - DevSpace:docs/mcfunction-idioms.md#実行位置を移動前の値として保持する
---

# 移動の慣性だけを消すtpの往復

移動停止の選択肢と実行文脈の条件は、DevSpaceの `docs/mcfunction-idioms.md`「実行位置を移動前の値として保持する」にある。[Blade of Whirlwindのヒットストップ](../../../../Asset/data/asset/functions/artifact/0745.blade_of_whirlwind/trigger/3.main.mcfunction) は、視点移動の慣性を残すため、同じ条件で絶対座標tpと相対座標tpを続ける利用例である。

移動前の文脈は演出にも使われる。[Ecual の転移演出](../../../../Asset/data/asset/functions/mob/0392.ecual_first/ai/general/3.teleport_effect/.mcfunction) は、tp直後に呼ばれ、通常のplaysoundで移動元、`execute at @s` 付きで移動先に音を出し、保持した位置から移動後の本人を向いて軌跡を描く。tp後だからと呼出し全体へ `at @s` を追加すると移動元を失う。古い文脈が意図的な入力か、取り直し漏れかを呼出側まで見て判断する。

[Frestchika の横移動](../../../../Asset/data/asset/functions/mob/0365.frestchika/tick/base_move/skill/side_dash_shot/.mcfunction) の「ウソ慣性」は、tick区間ごとにtp距離を減らして減速を作る。物理的なMotionの減衰ではなく、壁との判定も同じ `rotated` 文脈のcheck_collideで別に行う。判定と移動の向きを分離したり、Motionの設定へ単純に置換したりすると、移動と衝突の規則が変わる。
