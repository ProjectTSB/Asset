#> asset:mob/0124.skull_harpy/attack/levitation
#
#
#
# @within function asset:mob/0124.skull_harpy/attack/

# 浮遊を付与
    data modify storage api: Argument.ID set value 125
    data modify storage api: Argument.Stack set value 11
    data modify storage api: Argument.Duration set value 6
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
