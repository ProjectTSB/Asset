#> asset:effect/0373.longevity_your_thoughts/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0373.longevity_your_thoughts/_/tick

# 演出
    execute if predicate lib:random_pass_per/20 run particle minecraft:dust_color_transition 1 0.4 1 0.8 0.2 0.8 1 ~ ~1 ~ 0.4 0.4 0.4 1 10
