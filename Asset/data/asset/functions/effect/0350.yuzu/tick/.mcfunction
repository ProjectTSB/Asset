#> asset:effect/0350.yuzu/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0350.yuzu/_/tick

# 演出
    execute if predicate lib:random_pass_per/10 run particle dust 1 0.9 0.3 0.5 ~ ~1.2 ~ 0.4 0.4 0.4 0 1 normal @a
