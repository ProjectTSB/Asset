---
title: tp距離を減らして作る減速
description: tpで動かす移動に減速や慣性らしさを付けるとき、Motionや別向きの判定へ置き換えてよいか判断するために読む
area: motion
paths:
  - Asset/data/asset/functions/mob/0365.frestchika/tick/base_move/skill/side_dash_shot/.mcfunction
ids:
  - mob:0365
related:
  - docs/knowledge/mob.md#独自移動とvanillaの移動を切り替える
---

# tp距離を減らして作る減速

[Frestchika の横移動](../../../../Asset/data/asset/functions/mob/0365.frestchika/tick/base_move/skill/side_dash_shot/.mcfunction) の「ウソ慣性」は、tick区間ごとにtp距離を減らして減速を作る。物理的なMotionの減衰ではなく、壁との判定も同じ `rotated` 文脈のcheck_collideで別に行う。判定と移動の向きを分離したり、Motionの設定へ単純に置換したりすると、移動と衝突の規則が変わる。
