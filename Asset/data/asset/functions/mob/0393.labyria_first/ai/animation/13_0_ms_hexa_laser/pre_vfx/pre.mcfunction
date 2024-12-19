#> asset:mob/0393.labyria_first/ai/animation/13_0_ms_hexa_laser/pre_vfx/pre
#
# 準備段階のVFX
#
# @within function asset:mob/0393.labyria_first/ai/animation/13_0_ms_hexa_laser/

# マーカーを呼び出す
    execute if score @s AX.AnimationTick matches 40 run tp 0-0-0-0-0 ^ ^0.5 ^ ~ ~
    execute if score @s AX.AnimationTick matches 41 run tp 0-0-0-0-0 ^ ^1 ^ ~ ~
    execute if score @s AX.AnimationTick matches 42 run tp 0-0-0-0-0 ^ ^1.5 ^ ~ ~
    execute if score @s AX.AnimationTick matches 43 run tp 0-0-0-0-0 ^ ^2 ^ ~ ~
    execute if score @s AX.AnimationTick matches 44 run tp 0-0-0-0-0 ^ ^2.5 ^ ~ ~
    execute if score @s AX.AnimationTick matches 45 run tp 0-0-0-0-0 ^ ^3 ^ ~ ~
    execute if score @s AX.AnimationTick matches 46 run tp 0-0-0-0-0 ^ ^4 ^ ~ ~
    execute if score @s AX.AnimationTick matches 47 run tp 0-0-0-0-0 ^ ^5 ^ ~ ~
    execute if score @s AX.AnimationTick matches 48 run tp 0-0-0-0-0 ^ ^6 ^ ~ ~
    execute if score @s AX.AnimationTick matches 49 run tp 0-0-0-0-0 ^ ^7 ^ ~ ~
    execute if score @s AX.AnimationTick matches 50 run tp 0-0-0-0-0 ^ ^8 ^ ~ ~
    execute if score @s AX.AnimationTick matches 51 run tp 0-0-0-0-0 ^ ^8 ^ ~ ~
    execute if score @s AX.AnimationTick matches 52 run tp 0-0-0-0-0 ^ ^9 ^ ~ ~
    execute if score @s AX.AnimationTick matches 53 run tp 0-0-0-0-0 ^ ^9.5 ^ ~ ~
    execute if score @s AX.AnimationTick matches 54 run tp 0-0-0-0-0 ^ ^9.8 ^ ~ ~
    execute if score @s AX.AnimationTick matches 55 run tp 0-0-0-0-0 ^ ^10 ^ ~ ~

# ランダムな方向を向かせる（Y軸は固定）
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..36000
    execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run random value -9000..9000

# VFX表示
    execute at 0-0-0-0-0 run function asset:mob/0393.labyria_first/ai/animation/13_0_ms_hexa_laser/pre_vfx/vfx

# ランダムな方向を向かせる（Y軸は固定）
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..36000
    execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run random value -9000..9000

# VFX表示
    execute at 0-0-0-0-0 run function asset:mob/0393.labyria_first/ai/animation/13_0_ms_hexa_laser/pre_vfx/vfx

# ランダムな方向を向かせる（Y軸は固定）
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..36000
    execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run random value -9000..9000

# VFX表示
    execute at 0-0-0-0-0 run function asset:mob/0393.labyria_first/ai/animation/13_0_ms_hexa_laser/pre_vfx/vfx

# ランダムな方向を向かせる（Y軸は固定）
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..36000
    execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run random value -9000..9000

# VFX表示
    execute at 0-0-0-0-0 run function asset:mob/0393.labyria_first/ai/animation/13_0_ms_hexa_laser/pre_vfx/vfx

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
