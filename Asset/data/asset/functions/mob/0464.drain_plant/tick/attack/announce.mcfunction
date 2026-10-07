#> asset:mob/0464.drain_plant/tick/attack/announce
#
#
#
# @within function asset:mob/0464.drain_plant/tick/attack/

# 予告召喚
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride set value {Color:14628388,Scale:[7f,7f,0.01f]}
    data modify storage api: Argument.FieldOverride.Tick set value 20
    function api:object/summon
