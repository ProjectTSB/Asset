#> asset:object/1199.ocean_heart_vfx/tick/set_opacity
#
#
#
# @within function asset:object/1199.ocean_heart_vfx/tick/

# 時間かけて透明にする
    data modify entity @s start_interpolation set value 0
    data modify entity @s interpolation_duration set value 4
    data modify entity @s text_opacity set value 4
