#> asset:effect/0342.prayer_amidst_blight/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0342.prayer_amidst_blight/_/tick

# 演出
    execute if predicate lib:random_pass_per/30 run particle minecraft:dust_color_transition 0.4 0 0 1 0. 0 0 ~ ~1.2 ~ 1.5 1 1.5 0 1
