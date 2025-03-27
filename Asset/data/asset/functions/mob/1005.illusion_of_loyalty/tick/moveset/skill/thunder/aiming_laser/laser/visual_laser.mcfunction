#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/laser/visual_laser
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/laser/shoot

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.25f,0f,0.25f],Color:16775795,DisappearInterpolation:1,LifeTime:5}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
    function api:object/summon

# パーティクル
    particle dust 1 1 0 1 ~ ~ ~ 0.1 0.1 0.1 1 10

# リセット
    scoreboard players reset @s Temporary
