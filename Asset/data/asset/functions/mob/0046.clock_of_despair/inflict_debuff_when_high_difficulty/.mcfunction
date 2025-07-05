#> asset:mob/0046.clock_of_despair/inflict_debuff_when_high_difficulty/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/46/inflict_debuff_when_high_difficulty

data modify storage api: Argument.ID set value 64
data modify storage api: Argument.Duration set value 600
data modify storage api: Argument.StackOperation set value "add"
function api:entity/mob/effect/give
function api:entity/mob/effect/reset

function asset:mob/super.method
