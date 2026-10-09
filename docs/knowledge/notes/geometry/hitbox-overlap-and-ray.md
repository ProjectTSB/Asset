---
title: 小さな判定箱と、標的を実行者にするレイ
description: 近接・命中・到達の判定を実装するとき、範囲指定とレイの実行者の選び方を確認するために読む
area: geometry
paths:
  - Asset/data/asset/functions/object/1009.arrow/detect_hit_entity/from_player.mcfunction
  - Asset/data/asset/functions/mob/0263.shulker_bullet/tick/target/.mcfunction
related:
  - docs/knowledge/runtime-and-tools.md
  - DevSpace:docs/mcfunction-idioms.md#件数を上限で打ち切る
---

# 小さな判定箱と、標的を実行者にするレイ

`distance` や足元から測る幾何判定と、entityの当たり判定との重なりを調べるdxyzは、同じ対象集合にはならない。[Simple Grenade](../../../../Asset/data/asset/functions/object/1139.simple_grenade/hit/.mcfunction) は至近距離の取りこぼしを避けるため、distanceの範囲へdxyzの対象も加える。似た範囲指定だからという理由で一方を消さず、足元の点と当たり判定のどちらを含めたいか確認する。

[Arrow の命中判定](../../../../Asset/data/asset/functions/object/1009.arrow/detect_hit_entity/from_player.mcfunction) は、実行位置を各軸 -0.3 ずらして `@e[dx=0]` を選び、さらに -0.4 ずらして `@s[dx=0]` を調べる。`dx=0` は点ではなく各軸に1の幅を持つ箱なので、各軸の区間は元の位置を基準に `[-0.3,0.7]` と `[-0.7,0.3]` になる。両方と重なるentityの当たり判定を選ぶことで、共通部分 `[-0.3,0.3]` の小さな箱を作る。点からの距離判定へ変えたり、二段目を重複として消したりしない。オフセット変更時は二つの箱の共通部分を計算し直す。

[Shulker Bullet の標的検査](../../../../Asset/data/asset/functions/mob/0263.shulker_bullet/tick/target/.mcfunction) は、レイの実行者を標的プレイヤー、実行位置を発射側としている。位置だけを前へ進めるため、`@s[dx=0]` が標的への到達判定になる。[呼出側](../../../../Asset/data/asset/functions/mob/0263.shulker_bullet/tick/turn/.mcfunction) は `as <標的> facing entity @s eyes` として向きを設定し、戻り値で遮蔽を判定する。到達時の `execute summon marker` は、標的から新しいmarkerへ実行者を切り替え、[fetch](../../../../Asset/data/asset/functions/mob/0263.shulker_bullet/tick/target/fetch.mcfunction) で終点・向きを保存してmarkerをkillする。レイの位置と `@s` を同じものとして読み替えない。

召喚数に上限を設ける場合は、総数ではなく上限に達したかだけを数えられる。[Silver Turret](../../../../Asset/data/asset/functions/mob/0421.silver_turret/tick/check_count.mcfunction) は近傍のMob422を最大10体まで取得し、10体未満のときだけ成功を返す。limitと比較値、明示的なreturnの意味はDevSpaceの `docs/mcfunction-idioms.md`「件数を上限で打ち切る」を参照する。

[Icicleの命中](../../../../Asset/data/asset/functions/object/1068.icicle/hit_entity/.mcfunction) や [Barrel](../../../../Asset/data/asset/functions/object/1081.barrel/hit_entity/.mcfunction) は、ExtendedCollisionへの命中時にダメージを減らす。大型Mobへの多重命中を見込んだ調整であり、追加当たり判定への補正を不要として外さない（ユーザー確認済み）。倍率は攻撃ごとの調整値で、共通係数ではない。Icicleは命中集合にExtendedCollisionが一体でもあると全対象を減衰させる。他の対象まで減ること自体は狙いではないが、同時命中がほぼ起きない想定で許容している。対象範囲を広げる変更では、その前提を再確認する。
