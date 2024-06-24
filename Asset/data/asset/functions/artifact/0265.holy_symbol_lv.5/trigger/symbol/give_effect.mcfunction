#> asset:artifact/0265.holy_symbol_lv.5/trigger/symbol/give_effect
#
# エフェクトを付与
#
# @within function asset:artifact/0265.holy_symbol_lv.5/trigger/symbol/check_effect

# 浄化(ID:215)を付与
    data modify storage api: Argument.ID set value 215
    data modify storage api: Argument.Stack set value 5
    data modify storage api: Argument.Duration set value 320
    function api:entity/mob/effect/give

# 浄化の反動(ID:216)を付与
    data modify storage api: Argument.ID set value 216
    function api:entity/mob/effect/give
