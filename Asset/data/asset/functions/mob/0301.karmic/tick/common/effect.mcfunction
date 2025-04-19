#> asset:mob/0301.karmic/tick/common/effect
#
#
#
# @within function asset:mob/0301.karmic/tick/**

# エフェクトを付与
    data modify storage api: Argument.ID set value 601
    execute if predicate api:global_vars/difficulty/easy run data modify storage api: Argument.Stack set value 2
    execute if predicate api:global_vars/difficulty/normal run data modify storage api: Argument.Stack set value 5
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.Stack set value 9
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
