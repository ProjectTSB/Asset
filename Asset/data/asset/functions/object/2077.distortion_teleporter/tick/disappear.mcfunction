#> asset:object/2077.distortion_teleporter/tick/disappear
#
#
#
# @within function asset:object/2077.distortion_teleporter/tick/

    data modify entity @s start_interpolation set value 0
    data modify entity @s interpolation_duration set value 5
    data modify entity @s transformation.scale set value [0d,0d,0.01d]
