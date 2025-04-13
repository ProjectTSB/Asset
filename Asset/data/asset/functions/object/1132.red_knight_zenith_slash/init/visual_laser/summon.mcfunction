#> asset:object/1132.red_knight_zenith_slash/init/visual_laser/summon
#
#
#
# @within function asset:object/1132.red_knight_zenith_slash/init/visual_laser/

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.5f,0f,0.5f],Color:14570066,AppearInterpolation:4,DisappearTick:5,DisappearInterpolation:1,LifeTime:20}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
    function api:object/summon
