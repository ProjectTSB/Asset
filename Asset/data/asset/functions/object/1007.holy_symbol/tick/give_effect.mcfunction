#> asset:object/1007.holy_symbol/tick/give_effect
#
#
#
# @within function asset:object/1007.holy_symbol/tick/check_effect

# 浄化(ID:215)を付与
    data modify storage api: Argument.ID set value 215
    data modify storage api: Argument.Stack set from storage asset:context this.Effect.Stack
    data modify storage api: Argument.Duration set from storage asset:context this.Effect.Duration
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 浄化の反動(ID:216)を付与
    data modify storage api: Argument.ID set value 216
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
