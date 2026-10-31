---
title: distanceとdxyzは同じ対象集合にならない
description: 範囲攻撃の対象を選ぶとき、distanceと当たり判定の重なり（dxyz）のどちらを使うか、併用を消してよいか判断するために読む
area: geometry
paths:
  - Asset/data/asset/functions/object/1139.simple_grenade/hit/.mcfunction
ids:
  - object:1139
related:
  - docs/knowledge/runtime-and-tools.md
---

# distanceとdxyzは同じ対象集合にならない

`distance` や足元から測る幾何判定と、entityの当たり判定との重なりを調べるdxyzは、同じ対象集合にはならない。[Simple Grenade](../../../../Asset/data/asset/functions/object/1139.simple_grenade/hit/.mcfunction) は至近距離の取りこぼしを避けるため、distanceの範囲へdxyzの対象も加える。似た範囲指定だからという理由で一方を消さず、足元の点と当たり判定のどちらを含めたいか確認する。
