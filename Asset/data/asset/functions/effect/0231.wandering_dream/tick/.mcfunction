#> asset:effect/0231.wandering_dream/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0231.wandering_dream/_/tick

# 演出
    execute if predicate lib:random_pass_per/8 run particle dust 1000000000 0.5 1000000000 1.2 ~ ~1.2 ~ 0.4 0.4 0.4 0 1 normal @a
    execute if predicate lib:random_pass_per/40 run particle dust 1000000000 0.8 1000000000 0.5 ~ ~1.2 ~ 0.4 0.4 0.4 0 1 normal @a
