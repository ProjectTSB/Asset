#> asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon.m
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/**

# 召喚
    data modify storage api: Argument.ID set value 2248
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Thunder
    $data modify storage api: Argument.FieldOverride.Delay set value $(Delay)
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon
