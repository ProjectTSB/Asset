#> asset:effect/0331.deep_speed/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0331.deep_speed/_/tick

# 走ってるときのみ演出
    execute if predicate lib:is_sprinting run particle dust_color_transition 0.2 0.2 1.0 1.3 0 0 0.4 ~ ~1.2 ~ 0.4 0.4 0.4 0 3
