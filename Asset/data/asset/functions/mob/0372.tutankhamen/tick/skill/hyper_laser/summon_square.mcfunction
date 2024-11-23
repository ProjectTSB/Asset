#> asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2090
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    function api:object/summon
