#> asset:object/2025.darkness_spellbook_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2025/tick

# パーティクル
    particle fishing ~ ~ ~ 0.2 0.2 0.2 0.05 1 force @a[distance=..32]
    particle minecraft:dust 0.07 0.10 0.55 1 ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..32]

# 継承元の処理
    function asset:object/super.tick
