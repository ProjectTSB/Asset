#> asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/pre_vfx/pre
#
# 準備段階のVFX
#
# @within function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/

# 数値を代入してマクロの準備をする
    scoreboard players operation $AX.Temp AX.AnimationTick = @s AX.AnimationTick
    execute store result storage asset:temp AX.Tick double 0.005 run scoreboard players remove $AX.Temp AX.AnimationTick 22

# マーカーを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~

# ランダムな方向を向かせる（Y軸は固定）
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..36000
    execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run random value -9000..9000

# VFX表示（マクロを動かす）
    execute at 0-0-0-0-0 run function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/pre_vfx/pre.m with storage asset:temp AZ

# ランダムな方向を向かせる（Y軸は固定）
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..36000
    execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run random value -9000..9000

# VFX表示（マクロを動かす）
    execute at 0-0-0-0-0 run function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/pre_vfx/pre.m with storage asset:temp AZ

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# リセット
    scoreboard players reset $AX.Temp Temporary
    data remove storage asset:temp AX
