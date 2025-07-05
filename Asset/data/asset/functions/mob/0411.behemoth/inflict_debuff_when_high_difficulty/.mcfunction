#> asset:mob/0411.behemoth/inflict_debuff_when_high_difficulty/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/411/inflict_debuff_when_high_difficulty

data modify storage api: Argument.ID set value 57
data modify storage api: Argument.Duration set value 1600
data modify storage api: Argument.StackOperation set value "add"
function api:entity/mob/effect/give
function api:entity/mob/effect/reset

# 付与するものを上書きしているため、ここでは呼び出さない
    # function asset:mob/super.method
