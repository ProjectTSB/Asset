#> asset:mob/1004.tultaria/tick/base_move/regenerate_platform/as_platform
#
# 足場側の処理
#
# @within function asset:mob/1004.tultaria/tick/base_move/regenerate_platform/

# 足場復活
    fill ~2 ~-1 ~2 ~-2 ~-5 ~-2 barrier

# 演出
    playsound minecraft:ui.toast.in neutral @a ~ ~ ~ 1 0

# 足場を無効化扱いする
    tag @s remove 2026.Disabled

# 変形
    data modify entity @s start_interpolation set value 0
    data modify entity @s interpolation_duration set value 3
    data modify entity @s transformation.scale set value [5.0f,5.0f,0.01f]
    execute on passengers run data modify entity @s start_interpolation set value 0
    execute on passengers run data modify entity @s interpolation_duration set value 3
    execute on passengers run data modify entity @s transformation.scale set value [5.0f,5.0f,0.01f]
