#> asset:mob/0456.gargo_ex_machina/tick/util/hide_shadow
#
# 影の非表示
#
# @within asset:mob/0456.gargo_ex_machina/tick/**

# 影非表示
    data modify entity @s interpolation_duration set value 5
    data modify entity @s start_interpolation set value -1
    data modify entity @s shadow_radius set value 0
    data modify entity @s shadow_strength set value 0f
