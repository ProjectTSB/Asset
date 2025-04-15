#> asset:object/1117.ember_circle/tick/display
#
# 表示のやつ
#
# @within function asset:object/1117.ember_circle/tick/

# start_interpolation
    data modify entity @s start_interpolation set value 0

# transformation.scale
    data modify entity @s transformation.scale set from storage asset:context this.Scale

# interpolation_duration
    data modify entity @s interpolation_duration set from storage asset:context this.Interpolation

# Delayを-1にして何度も表示されないようにする
    data modify storage asset:context this.Delay set value -1
