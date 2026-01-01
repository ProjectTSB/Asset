#> asset:effect/0215.purification/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0215.purification/_/tick

# 演出
    execute if predicate lib:random_pass_per/25 run particle dust 0.5 0.9 1 0.8 ~ ~1 ~ 0.3 0.5 0.3 1 1
