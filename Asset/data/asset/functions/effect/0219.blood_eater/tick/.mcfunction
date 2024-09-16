#> asset:effect/0219.blood_eater/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0219.blood_eater/_/tick

# 演出
    execute if predicate lib:random_pass_per/10 run particle landing_lava ~ ~1 ~ 0.1 0.2 0.1 0 5
    execute if predicate lib:random_pass_per/30 run particle dust 0.400 0.000 0.000 1.3 ~ ~1 ~ 1 1 1 1 1 normal