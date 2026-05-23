#> asset:effect/0276.unending_thunder/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0276.unending_thunder/_/tick

# 演出
    execute if predicate lib:random_pass_per/20 run particle dust 1 1 0 0.6 ~ ~1.2 ~ 0.4 0.4 0.4 0 1 normal @a
    execute if predicate lib:random_pass_per/20 run particle dust 0.2 0.2 0.2 0.6 ~ ~1.2 ~ 0.4 0.4 0.4 0 1 normal @a
