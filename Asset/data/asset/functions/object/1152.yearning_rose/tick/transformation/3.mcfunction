#> asset:object/1152.yearning_rose/tick/transformation/3
#
#
#
# @within function asset:object/1152.yearning_rose/tick/

# 75
    data modify entity @s start_interpolation set value 0
    data modify entity @s interpolation_duration set value 3
    data modify entity @s transformation.scale set from storage asset:context this.Scale.NearMax
    data modify entity @s transformation.left_rotation set value {angle:0.6545f,axis:[0f,1f,0f]}
