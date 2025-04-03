#> asset:object/2241.lawless_slashshot/tick/shrink
#
# 縮んで消えていく
#
# @within function asset:object/2241.lawless_slashshot/tick/

data modify entity @s start_interpolation set value 0
data modify entity @s interpolation_duration set value 3
data modify entity @s transformation.scale set value [0.0f,0.0f,0.0f]
