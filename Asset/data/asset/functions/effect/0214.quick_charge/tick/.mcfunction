#> asset:effect/0214.quick_charge/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0214.quick_charge/_/tick

# 演出
    execute if predicate lib:random_pass_per/20 run particle electric_spark ~ ~1.2 ~ 0.8 0.6 0.8 0 2 normal @a
