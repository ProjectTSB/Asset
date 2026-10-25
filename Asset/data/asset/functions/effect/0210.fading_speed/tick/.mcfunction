#> asset:effect/0210.fading_speed/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0210.fading_speed/_/tick

# 効果時間が1になるごとにスタックを1下げる
    execute if data storage asset:context {Duration:1} run function asset:effect/0210.fading_speed/tick/reduce_stack
