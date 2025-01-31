#> asset:artifact/1017.cutlass_of_endless_silence/trigger/slash/levitation
#
# 浮遊を付与
#
# @within function asset:artifact/1017.cutlass_of_endless_silence/trigger/slash/second

# 浮遊を付与
    data modify storage api: Argument.ID set value 125
    data modify storage api: Argument.Stack set value 40
    data modify storage api: Argument.Duration set value 4
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
