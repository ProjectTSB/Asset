#> asset:artifact/0971.laser_eye_helmet/shot/shoot/
#
#
#
# @within function asset:artifact/0971.laser_eye_helmet/shot/spread

# 発射
    function asset:artifact/0971.laser_eye_helmet/shot/shoot/recursive

# レーザーobject召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.25f,0f,0.25f],Color:7733114,DisappearInterpolation:2,LifeTime:7}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 0.5 run scoreboard players get $Distance_Damping Temporary
    execute positioned ^ ^ ^0.5 run function api:object/summon
