#> asset:object/2077.distortion_teleporter/tick/scale_up
#
# デカくなる
#
# @within function asset:object/2077.distortion_teleporter/tick/

# start_interpolation
    data modify entity @s start_interpolation set value 0

# transformation.scale
    data modify entity @s transformation.scale set value [5f,5f,0.01f]

# interpolation_duration
    data modify entity @s interpolation_duration set value 2

# Delayを-1にして何度も表示されないようにする
    data modify storage asset:context this.Delay set value -1
