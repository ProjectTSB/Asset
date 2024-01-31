#> asset:effect/0612.infringement/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0612.infringement/_/tick

# 演出
    particle crit ~ ~1.2 ~ 0.4 0.5 0.4 1 1 normal @a

# 鈍足と跳躍を付与
    effect give @s slowness 1 10 true
    effect give @s jump_boost 1 128 true