#> asset:effect/0408.fueling/end/attack/1.m
#
#
#
# @within function asset:effect/0408.fueling/end/

    $execute as @e[type=#lib:living_without_player,tag=Enemy,distance=..$(0)] run function api:damage/

# 演出
    playsound ogg:random.explode4 player @a ~ ~ ~ 1 2
    particle flame ~ ~ ~ 1 0.0 1 0.01 50
