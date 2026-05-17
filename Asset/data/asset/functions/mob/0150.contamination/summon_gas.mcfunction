#> asset:mob/0150.contamination/summon_gas
#
#
#
# @within function
#   asset:mob/0150.contamination/attack/
#   asset:mob/0150.contamination/hurt/

# 演出
    playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 0.7
    playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 1
    playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 1.7
# ガスを召喚する
    data modify storage api: Argument.ID set value 2072
    function api:object/summon
