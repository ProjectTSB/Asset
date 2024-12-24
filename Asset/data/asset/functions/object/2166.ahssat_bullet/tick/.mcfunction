#> asset:object/2166.ahssat_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2166/tick

# パーティクル
    particle flame ~ ~ ~ 0.2 0.2 0.2 0.05 1 force @a[distance=..32]
    particle minecraft:dust 1 0.15 0.15 1 ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..32]

# 継承元の処理
    function asset:object/super.tick
