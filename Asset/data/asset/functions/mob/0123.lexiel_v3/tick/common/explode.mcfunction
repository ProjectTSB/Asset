#> asset:mob/0123.lexiel_v3/tick/common/explode
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/**/**


# 召喚
    data modify storage api: Argument.ID set value 2103
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon
