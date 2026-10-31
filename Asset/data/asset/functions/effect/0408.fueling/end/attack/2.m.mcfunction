#> asset:effect/0408.fueling/end/attack/2.m
#
#
#
# @within function asset:effect/0408.fueling/end/


    $execute as @e[type=#lib:living_without_player,tag=Enemy,distance=..$(1)] run function api:damage/

# 演出
    playsound ogg:random.explode4 player @a ~ ~ ~ 1 1.5
    particle flame ~ ~ ~ 2 0.0 2 0.01 100
    particle explosion ^ ^ ^4 0 0 0 1 1
