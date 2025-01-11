#> asset:object/2018.ecual_water_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2018/tick

# パーティクル
    particle fishing ~ ~ ~ 0.2 0.2 0.2 0.05 1 force @a[distance=..32]
    particle minecraft:dust 0.5 1 100000000 1 ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..32]

# 継承元の処理
    function asset:object/super.tick
