#> asset:effect/0253.purifying_indigo/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0253.purifying_indigo/_/tick

# 演出
    particle dust_color_transition 0.169 0.718 1.000 0.6 0.514 0.667 0.969 ~ ~1.2 ~ 0.6 0.4 0.6 0 1 normal
    execute if predicate lib:random_pass_per/40 run particle rain ~ ~1.2 ~ 0.6 0.4 0.6 0 1 normal @a
