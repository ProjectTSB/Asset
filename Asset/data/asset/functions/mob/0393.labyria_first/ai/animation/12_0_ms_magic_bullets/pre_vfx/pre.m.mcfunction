#> asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/pre_vfx/pre.m
#
# マクロ式球体表示
#
# @within function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/pre_vfx/pre

particle dust 1 1 0.3 0.8 ^ ^ ^ 0.0 0.0 0.0 0 1 force @a[distance=..32]
$particle dust 1 1 0.3 0.8 ^$(Tick) ^ ^ 0.0 0.0 0.0 0 1 force @a[distance=..32]
$particle dust 1 1 0.3 0.8 ^-$(Tick) ^ ^ 0.0 0.0 0.0 0 1 force @a[distance=..32]
$particle dust 1 1 0.3 0.8 ^ ^$(Tick) ^ 0.0 0.0 0.0 0 1 force @a[distance=..32]
$particle dust 1 1 0.3 0.8 ^ ^-$(Tick) ^ 0.0 0.0 0.0 0 1 force @a[distance=..32]
$particle dust 1 1 0.3 0.8 ^ ^ ^$(Tick) 0.0 0.0 0.0 0 1 force @a[distance=..32]
$particle dust 1 1 0.3 0.8 ^ ^ ^-$(Tick) 0.0 0.0 0.0 0 1 force @a[distance=..32]
