#> asset:mob/0158.sin/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/158/tick

# 演出
    particle witch ~ ~ ~ 1 0 1 1 4 normal
    particle dust 0.137 0.027 0.275 3 ~ ~ ~ 1 0 1 1 10

# 効果
    effect give @a[distance=..3] slowness 1 2
    effect give @a[distance=..3] blindness 2 0
    effect give @a[distance=..3] mining_fatigue 2 0
    effect give @a[distance=..3] nausea 2 2
