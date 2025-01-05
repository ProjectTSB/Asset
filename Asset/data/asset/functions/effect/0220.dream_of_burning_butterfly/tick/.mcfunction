#> asset:effect/0220.dream_of_burning_butterfly/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0220.dream_of_burning_butterfly/_/tick

# 演出
    execute if predicate lib:random_pass_per/20 run particle flame ~ ~1.3 ~ 0.4 0.6 0.4 0 1
    execute if predicate lib:random_pass_per/10 run particle dripping_lava ~ ~1.3 ~ 0.4 0.6 0.4 0 2
    execute if predicate lib:random_pass_per/20 run particle dust_color_transition 0.733 0.039 0.039 1 1 0.58 0.188 ~ ~1.3 ~ 0.4 0.6 0.4 0 2
