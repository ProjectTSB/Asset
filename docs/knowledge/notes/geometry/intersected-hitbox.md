---
title: 二つのdx箱の共通部分で小さな判定箱を作る
description: 命中判定にdx=0の1ブロック幅より小さい箱を使いたいとき、dx=0を二段で使う書き方を変更・流用するために読む
area: geometry
paths:
  - Asset/data/asset/functions/object/1009.arrow/detect_hit_entity/from_player.mcfunction
ids:
  - object:1009
related:
  - docs/knowledge/runtime-and-tools.md
---

# 二つのdx箱の共通部分で小さな判定箱を作る

[Arrow の命中判定](../../../../Asset/data/asset/functions/object/1009.arrow/detect_hit_entity/from_player.mcfunction) は、実行位置を各軸 -0.3 ずらして `@e[dx=0]` を選び、さらに -0.4 ずらして `@s[dx=0]` を調べる。`dx=0` は点ではなく各軸に1の幅を持つ箱なので、各軸の区間は元の位置を基準に `[-0.3,0.7]` と `[-0.7,0.3]` になる。両方と重なるentityの当たり判定を選ぶことで、共通部分 `[-0.3,0.3]` の小さな箱を作る。点からの距離判定へ変えたり、二段目を重複として消したりしない。オフセット変更時は二つの箱の共通部分を計算し直す。
