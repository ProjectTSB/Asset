---
title: 標的を実行者にして進めるレイ
description: 追尾や到達の判定でレイを進めるとき、実行者と実行位置をどちらに置くか、`@s` を何として読むか判断するために読む
area: geometry
paths:
  - Asset/data/asset/functions/mob/0263.shulker_bullet/tick/target/.mcfunction
ids:
  - mob:0263
related:
  - docs/knowledge/runtime-and-tools.md
---

# 標的を実行者にして進めるレイ

[Shulker Bullet の標的検査](../../../../Asset/data/asset/functions/mob/0263.shulker_bullet/tick/target/.mcfunction) は、レイの実行者を標的プレイヤー、実行位置を発射側としている。位置だけを前へ進めるため、`@s[dx=0]` が標的への到達判定になる。[呼出側](../../../../Asset/data/asset/functions/mob/0263.shulker_bullet/tick/turn/.mcfunction) は `as <標的> facing entity @s eyes` として向きを設定し、戻り値で遮蔽を判定する。到達時の `execute summon marker` は、標的から新しいmarkerへ実行者を切り替え、[fetch](../../../../Asset/data/asset/functions/mob/0263.shulker_bullet/tick/target/fetch.mcfunction) で終点・向きを保存してmarkerをkillする。レイの位置と `@s` を同じものとして読み替えない。
