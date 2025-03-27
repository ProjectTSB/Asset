#> asset:object/2052.lastboss_platform_attack_purple/tick/break
#
# 足場を破壊する
#
# @within function asset:object/2052.lastboss_platform_attack_purple/tick/damage

# 足場消える
    fill ~2 ~-1 ~2 ~-2 ~-5 ~-2 air

# 演出
    playsound minecraft:ui.toast.in neutral @a ~ ~ ~ 1 0

# 足場を無効化扱いする
    tag @s add 2026.Disabled

# 変形
    data modify entity @s start_interpolation set value 0
    data modify entity @s interpolation_duration set value 3
    data modify entity @s transformation.scale set value [0.0f,0.0f,0.01f]
    execute on passengers run data modify entity @s start_interpolation set value 0
    execute on passengers run data modify entity @s interpolation_duration set value 3
    execute on passengers run data modify entity @s transformation.scale set value [0.0f,0.0f,0.01f]
