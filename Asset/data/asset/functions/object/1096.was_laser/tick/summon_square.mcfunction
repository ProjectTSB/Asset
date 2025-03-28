#> asset:object/1096.was_laser/tick/summon_square
#
#
#
# @within function asset:object/1096.was_laser/tick/

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2090
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    function api:object/summon
