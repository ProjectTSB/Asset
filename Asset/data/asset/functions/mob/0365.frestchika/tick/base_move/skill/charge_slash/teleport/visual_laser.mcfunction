#> asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/visual_laser
#
# レーザーというよりかは移動の軌跡みたいに
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/active

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[3.0f,0f,1.0f],Color:6209279,DisappearInterpolation:2,LifeTime:10}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
    function api:object/summon

# パーティクル
    particle dust 0 0.75 1 1 ~ ~ ~ 0.1 0.1 0.1 1 10

# リセット
    scoreboard players reset @s Temporary
