#> asset:effect/0257.sprout/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0257.sprout/_/tick

# 演出
    execute if predicate lib:random_pass_per/50 run particle dust 1 1000000000 1 0.8 ~ ~1.2 ~ 0.5 0.4 0.5 0 1 normal @a
