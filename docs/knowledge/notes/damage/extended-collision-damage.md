---
title: ExtendedCollisionへの命中でダメージを減らす調整
description: 追加当たり判定を持つ大型Mobへの攻撃で、命中時のダメージ補正を外してよいか、SDSで代えられるか判断するときに読む
area: damage
paths:
  - Asset/data/asset/functions/object/1068.icicle/hit_entity/.mcfunction
  - Asset/data/asset/functions/object/1081.barrel/hit_entity/.mcfunction
ids:
  - object:1068
  - object:1081
related:
  - docs/knowledge/artifact.md#範囲攻撃のダメージ計算と一撃の区切り
  - TheSkyBlessing:docs/knowledge/runtime-components.md#mob共通の個体表現と追加当たり判定
---

# ExtendedCollisionへの命中でダメージを減らす調整

[Icicleの命中](../../../../Asset/data/asset/functions/object/1068.icicle/hit_entity/.mcfunction) や [Barrel](../../../../Asset/data/asset/functions/object/1081.barrel/hit_entity/.mcfunction) は、ExtendedCollisionへの命中時にダメージを減らす。大型Mobへの多重命中を見込んだ調整であり、追加当たり判定への補正を不要として外さない（ユーザー確認済み）。倍率は攻撃ごとの調整値で、共通係数ではない。Icicleは命中集合にExtendedCollisionが一体でもあると全対象を減衰させる。他の対象まで減ること自体は狙いではないが、同時命中がほぼ起きない想定で許容している。対象範囲を広げる変更では、その前提を再確認する。

IcicleとBarrelの命中処理を `single_damage_session`（SDS）で囲んでも、適用回数は変わらない。両者は命中処理の最後にresetを1回だけ呼び、その区間ではDamage APIが追加当たり判定を経由した適用を本体ごとに1回へ抑えているためである。抑制とSDSの契約は、依存先TheSkyBlessingの `docs/knowledge/runtime-components.md`「Mob：共通の個体表現と追加当たり判定」にある。対象ごとにresetを呼ぶ攻撃でのSDSの使い方は、Artifactの [範囲攻撃のダメージ計算と一撃の区切り](../../artifact.md#範囲攻撃のダメージ計算と一撃の区切り) を参照する。
