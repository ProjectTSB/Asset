#> asset:mob/0456.gargo_ex_machina/tick/util/show_shadow
#
# 影の表示
#
# @within asset:mob/0456.gargo_ex_machina/tick/**

# 影表示
    data modify entity @s interpolation_duration set value 5
    data modify entity @s start_interpolation set value -1
    data modify entity @s shadow_radius set value 6
    data modify entity @s shadow_strength set value 1f
