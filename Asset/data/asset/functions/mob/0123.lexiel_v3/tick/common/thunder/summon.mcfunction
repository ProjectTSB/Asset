#> asset:mob/0123.lexiel_v3/tick/common/thunder/summon
#
#
#
# @within function
#   asset:mob/0123.lexiel_v3/tick/common/thunder/spread
#   asset:mob/0123.lexiel_v3/tick/common/thunder/predict_summon.m

# 召喚
    data modify storage api: Argument.ID set value 2104
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon

# 演出
    playsound minecraft:entity.puffer_fish.death hostile @a ^ ^ ^20 1 0.3
