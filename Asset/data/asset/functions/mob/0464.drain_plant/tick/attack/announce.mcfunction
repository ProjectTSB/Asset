#> asset:mob/0464.drain_plant/tick/attack/announce
#
#
#
# @within function asset:mob/0464.drain_plant/tick/attack/

# 予告召喚
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride set value {Color:14628388,Scale:[9f,9f,0.01f]}
    data modify storage api: Argument.FieldOverride.Tick set value 40
    function api:object/summon
