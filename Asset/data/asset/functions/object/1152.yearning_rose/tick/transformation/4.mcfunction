#> asset:object/1152.yearning_rose/tick/transformation/4
#
#
#
# @within function asset:object/1152.yearning_rose/tick/

# 90
    data modify entity @s start_interpolation set value 0
    data modify entity @s interpolation_duration set value 4
    data modify entity @s transformation.scale set from storage asset:context this.Scale.Min
    data modify entity @s transformation.left_rotation set value {angle:0.7854f,axis:[0f,1f,0f]}
