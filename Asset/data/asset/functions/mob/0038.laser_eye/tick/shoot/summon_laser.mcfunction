#> asset:mob/0038.laser_eye/tick/shoot/summon_laser
#
#
#
# @within function asset:mob/0038.laser_eye/tick/shoot/shoot

# レーザー演出オブジェクト
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.25f,0f,0.25f],Color:7733114,DisappearInterpolation:2,LifeTime:7}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 0.5 run scoreboard players get $Range Temporary
    execute positioned ^ ^ ^1.4 run function api:object/summon
