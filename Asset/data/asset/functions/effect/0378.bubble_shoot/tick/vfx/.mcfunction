#> asset:effect/0378.bubble_shoot/tick/vfx/
#
# 演出
#
# @within function asset:effect/0378.bubble_shoot/tick/summon

# 発射音とリングの軌跡
    playsound ogg:block.bubble_column.upwards_ambient1 player @a ~ ~ ~ 0.3 1.4
    particle minecraft:dust_color_transition 0.6 0.9 1.0 1.0 0.3 0.6 0.9 ^ ^ ^ 0.1 0.1 0.1 0 10 normal
    particle minecraft:dust 1.0 1.0 1.0 1.0 ^-0.425 ^0.1 ^ 0.05 0.05 0.05 0 3 normal
    particle minecraft:bubble_pop ~ ~ ~ 0.5 0.5 0.3 0.05 10
    particle minecraft:splash ~ ~ ~ 0.5 0.5 0.5 0.05 5
    particle minecraft:crit ~ ~ ~ 0 0 0 0.05 1
