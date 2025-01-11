#> asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/laser/visual_laser
#
# 見た目のレーザー。
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/laser/shoot

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.4f,0f,0.4f],Color:16775795,DisappearInterpolation:1,LifeTime:5}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
    function api:object/summon

# パーティクル
    particle dust 1 1 0 1 ~ ~ ~ 0.1 0.1 0.1 1 10

# リセット
    scoreboard players reset @s Temporary
