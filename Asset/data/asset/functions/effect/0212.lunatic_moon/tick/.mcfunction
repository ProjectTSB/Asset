#> asset:effect/0212.lunatic_moon/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0212.lunatic_moon/_/tick

# 演出
    execute if predicate lib:random_pass_per/20 run particle end_rod ~ ~1.2 ~ 0.5 0.5 0.5 0.1 1 normal @a
