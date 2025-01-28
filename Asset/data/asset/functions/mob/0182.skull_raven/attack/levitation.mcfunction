#> asset:mob/0182.skull_raven/attack/levitation
#
# 浮遊を付与
#
# @within function asset:mob/0182.skull_raven/attack/

# 浮遊を付与
    data modify storage api: Argument.ID set value 125
    data modify storage api: Argument.Stack set value 21
    data modify storage api: Argument.Duration set value 6
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
