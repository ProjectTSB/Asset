#> asset:artifact/0075.whirlpool_wand/trigger/vfx/inside_water
#
# 水中にいる敵の演出
#
# @within function asset:artifact/0075.whirlpool_wand/trigger/3.main

# 演出
    playsound minecraft:block.bubble_column.upwards_inside player @a ~ ~ ~ 1 1.8
    particle minecraft:splash ~ ~2 ~ 0.4 1 0.4 0.1 100 normal @a
    particle minecraft:poof ~ ~1 ~ 0.1 0.5 0.1 0.1 20 normal @a
