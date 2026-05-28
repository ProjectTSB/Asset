#> asset:object/1152.yearning_rose/tick/transformation/1
#
#
#
# @within function asset:object/1152.yearning_rose/tick/

# メモ: 20
    data modify entity @s start_interpolation set value 0
    data modify entity @s interpolation_duration set value 2
    data modify entity @s transformation.scale set from storage asset:context this.Scale.Max
    data modify entity @s transformation.left_rotation set value {angle:0.1745f,axis:[0f,1f,0f]}
