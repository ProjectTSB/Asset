#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/visual_laser
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/shoot

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[1.0f,0f,1.0f],Color:7536895,DisappearInterpolation:1,LifeTime:7}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
    function api:object/summon

# リセット
    scoreboard players reset @s Temporary
