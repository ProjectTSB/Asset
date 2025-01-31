#> asset:mob/0055.hetukedah/tick/skill/explosion/levitation/normal
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/explosion/explosion

# 浮遊を付与
    data modify storage api: Argument.ID set value 125
    data modify storage api: Argument.Stack set value 31
    data modify storage api: Argument.Duration set value 5
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
