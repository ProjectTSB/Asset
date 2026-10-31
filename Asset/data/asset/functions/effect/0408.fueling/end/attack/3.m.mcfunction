#> asset:effect/0408.fueling/end/attack/3.m
#
#
#
# @within function asset:effect/0408.fueling/end/

    $execute as @e[type=#lib:living_without_player,tag=Enemy,distance=..$(2)] run function api:damage/

# 演出
    playsound ogg:random.explode4 player @a ~ ~ ~ 1 1.5
    particle flame ~ ~ ~ 4 0.0 4 0.01 150
    particle explosion_emitter ^ ^ ^6 0 0 0 1 1
