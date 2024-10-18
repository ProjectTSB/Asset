#> asset:object/2041.lastboss_thunder/tick/transform/1
#
# 出現して、ちょっと大きく膨らむ
#
# @within function asset:object/2041.lastboss_thunder/tick/thunder

data modify entity @s start_interpolation set value 0
data modify entity @s interpolation_duration set value 1
data modify entity @s transformation.scale set value [3.0f,3.0f,40.0f]
