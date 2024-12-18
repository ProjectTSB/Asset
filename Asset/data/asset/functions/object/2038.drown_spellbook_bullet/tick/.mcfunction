#> asset:object/2038.drown_spellbook_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2038/tick

# パーティクル
    particle fishing ~ ~ ~ 0.2 0.2 0.2 0.05 1 force @a[distance=..32]
    particle minecraft:dust 0.2 0.85 0.9 1 ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..32]

# 継承元の処理
    function asset:object/super.tick
