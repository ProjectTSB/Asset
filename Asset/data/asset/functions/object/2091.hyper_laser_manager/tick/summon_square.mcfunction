#> asset:object/2091.hyper_laser_manager/tick/summon_square
#
#
#
# @within function asset:object/2091.hyper_laser_manager/tick/

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2090
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    function api:object/summon
