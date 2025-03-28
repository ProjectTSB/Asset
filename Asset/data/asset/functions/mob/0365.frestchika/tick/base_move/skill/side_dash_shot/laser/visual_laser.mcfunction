#> asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/laser/visual_laser
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/laser/shoot

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.5f,0f,0.5f],Color:6209279,DisappearInterpolation:1,LifeTime:5}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
    function api:object/summon

# パーティクル
    particle dust 0 0.75 1 1 ~ ~ ~ 0.1 0.1 0.1 1 10

# リセット
    scoreboard players reset @s Temporary
