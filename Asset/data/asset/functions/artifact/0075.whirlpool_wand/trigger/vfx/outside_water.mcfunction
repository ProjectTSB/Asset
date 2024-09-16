#> asset:artifact/0075.whirlpool_wand/trigger/vfx/outside_water
#
# 水中にいない敵の演出
#
# @within function asset:artifact/0075.whirlpool_wand/trigger/3.main

# 演出
    playsound minecraft:block.bubble_column.upwards_inside player @a ~ ~ ~ 1 1.8
    particle minecraft:splash ~ ~1 ~ 0.4 0.25 0.4 0.1 50 normal @a
    particle minecraft:poof ~ ~0.6 ~ 0.1 0.125 0.1 0.05 10 normal @a
