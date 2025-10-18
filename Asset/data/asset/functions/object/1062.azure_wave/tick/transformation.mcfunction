#> asset:object/1062.azure_wave/tick/transformation
#
#
#
# @within function asset:object/1062.azure_wave/tick/

# start_interpolation
    data modify entity @s start_interpolation set value 0

# 回転
    data modify entity @s transformation.left_rotation set value [0f,0.7071f,0f,0.7071f]
    data modify entity @s transformation.scale set value [6f,2f,6f]
