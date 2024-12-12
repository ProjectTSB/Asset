#> asset:effect/0125.levitation/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0125.levitation/_/tick

# 浮遊を付与
    data modify storage asset:temp 125.Stack set from storage asset:context Stack
    function asset:effect/0125.levitation/tick/give.m with storage asset:temp 125
    data remove storage asset:temp 125
