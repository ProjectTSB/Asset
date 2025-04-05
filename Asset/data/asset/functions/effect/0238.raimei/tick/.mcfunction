#> asset:effect/0238.raimei/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0238.raimei/_/tick

# vfx
    particle dust 1 1 0 0.5 ~ ~1 ~ 0.3 0.3 0.3 0 1 normal

# 跳躍と採掘速度上昇
    effect give @s jump_boost 1 0 true
    effect give @s haste 1 0 true
