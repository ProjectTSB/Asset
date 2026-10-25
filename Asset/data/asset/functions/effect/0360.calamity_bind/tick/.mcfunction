#> asset:effect/0360.calamity_bind/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0360.calamity_bind/_/tick

# 演出
    execute if predicate lib:random_pass_per/20 run particle dust 0.5 0 0 1 ~ ~1.2 ~ 1 1 1 0 1
    execute if predicate lib:random_pass_per/20 run particle ash ~ ~1.2 ~ 1 1 1 0 1
