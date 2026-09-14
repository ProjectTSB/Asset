#> asset:effect/0373.longevity_your_thoughts/effect/set
#
# 初期化処理
#
# @within function
#   asset:effect/0373.longevity_your_thoughts/given/
#   asset:effect/0373.longevity_your_thoughts/re-given/
#   asset:effect/0373.longevity_your_thoughts/tick/update_effect

#> val
# @private
    #declare score_holder $15G.Stack
    #declare score_holder $15G.Amount

# MP回復量バフの計算（Stack*Amount）
    execute store result score $15G.Stack Temporary run data get storage asset:context Stack 1
    execute store result score $15G.Amount Temporary run data get storage asset:context this.Amount 100
    scoreboard players operation $15G.Amount Temporary *= $15G.Stack Temporary

# MP回復量
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    execute store result storage api: Argument.Amount double 0.01 run scoreboard players get $15G.Amount Temporary
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_heal/add

# リセット
    scoreboard players reset $15G.Stack Temporary
    scoreboard players reset $15G.Amount Temporary
