#> asset:effect/0260.life_steal/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0260.life_steal/_/tick

# 演出
    execute if predicate lib:random_pass_per/20 run particle dust 0.45 0 0 0.5 ~ ~1 ~ 0.5 0.5 0.5 1 2 normal
