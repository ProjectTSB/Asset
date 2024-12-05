#> asset:artifact/0057.elemental_sword/trigger/vfx/water
#
# 水属性
#
# @within function asset:artifact/0057.elemental_sword/trigger/3.main

# 演出
    particle minecraft:falling_water ~ ~1 ~ 0.4 1 0.4 1 100
    particle minecraft:bubble_pop ~ ~0.5 ~ 0 0 0 0.2 100
    playsound minecraft:item.bucket.fill player @a ~ ~ ~ 1 1
    playsound minecraft:entity.generic.swim player @a ~ ~ ~ 1 1
