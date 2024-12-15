#> asset:mob/0287.burning_stomper/tick/event/levitation
#
# 浮遊を付与
#
# @within function asset:mob/0287.burning_stomper/tick/event/stomp

# 浮遊を付与
    data modify storage api: Argument.ID set value 125
    data modify storage api: Argument.Stack set value 21
    data modify storage api: Argument.Duration set value 7
    function api:entity/mob/effect/give
