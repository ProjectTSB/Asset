#> asset:mob/0292.trample_bot/tick/event/levitation
#
# 浮遊を付与
#
# @within function asset:mob/0292.trample_bot/tick/event/stomp

# 浮遊を付与
    data modify storage api: Argument.ID set value 125
    data modify storage api: Argument.Stack set value 21
    data modify storage api: Argument.Duration set value 5
    function api:entity/mob/effect/give
