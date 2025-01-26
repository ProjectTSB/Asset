#> asset:object/2091.hyper_laser_manager/tick/alert
#
#
#
# @within function asset:object/2091.hyper_laser_manager/tick/

# データ設定
    data modify storage api: Argument.FieldOverride set value {Color:5436415,Interpolation:15,Tick:40,Scale:[5f,30.0f]}

# 見てる方向へRotationXを設定
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]

# 召喚
    data modify storage api: Argument.ID set value 2113
    function api:object/summon
