#> asset:object/1062.azure_wave/tick/disappear
#
#
#
# @within function asset:object/1062.azure_wave/tick/

# start_interpolation
    data modify entity @s start_interpolation set value 0

# interpolation_duration
    data modify entity @s interpolation_duration set value 8

# 小さくなる
    data modify entity @s transformation.scale set value [12f,0.1f,12f]
    data modify entity @s transformation.translation set value [0f,-0.5f,0f]
