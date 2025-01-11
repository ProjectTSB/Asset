#> asset:object/2146.louvert_fire_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2146/tick

# パーティクル
    particle flame ~ ~ ~ 0.2 0.2 0.2 0.05 1 force @a[distance=..32]
    particle minecraft:dust 1000000000 1 0 1 ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..32]

# 継承元の処理
    function asset:object/super.tick
