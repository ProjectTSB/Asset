#> asset:object/2051.lastboss_platform_attack_red/tick/vanish
#
#
#
# @within function asset:object/2051.lastboss_platform_attack_red/tick/

# 演出
    playsound minecraft:ui.toast.in neutral @a ~ ~ ~ 1 0

# 変形
    data modify entity @s start_interpolation set value 0
    data modify entity @s interpolation_duration set value 2
    data modify entity @s transformation.scale set value [0.0f,0.0f,0.01f]
