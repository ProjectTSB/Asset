#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/small_laser/visual_laser
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/small_laser/shoot

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.5f,0f,0.5f],Color:7536895,DisappearInterpolation:1,LifeTime:5}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
    function api:object/summon

# リセット
    scoreboard players reset @s Temporary
