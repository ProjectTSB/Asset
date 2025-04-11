#> asset:mob/0175.queen_bee/tick/skill/needle/object_summon
#
#
#
# @within function asset:mob/0175.queen_bee/tick/skill/needle/shot

# 召喚
    data modify storage api: Argument.ID set value 2225
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute store result storage api: Argument.FieldOverride.Damage int 1 run data get storage asset:context this.Damage.Needle
    function api:object/summon
