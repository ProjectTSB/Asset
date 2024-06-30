#> asset:effect/0606.mineralization/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0606.mineralization/_/tick

# 演出
    particle block stone ~ ~1.2 ~ 0.1 0.4 0.1 0 4 normal @a

# ジャンプ不可
# TODO : 1.20.5になったらattributeに変える
    effect give @s jump_boost 1 128 true
