#> asset:effect/0217.the_answer/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0217.the_answer/_/tick

#> Private
# @private
    #declare score_holder $CurrentMP

# 演出
    execute if predicate lib:random_pass_per/42 run particle portal ~ ~1.2 ~ 0.42 0.42 0.42 0.42 1 force @a
    execute if predicate lib:random_pass_per/42 run particle reverse_portal ~ ~1.2 ~ 0.42 0.42 0.42 0.42 1 force @a

# MP が 42 以下でなければ実行しない
    function api:mp/get_current
    execute store result score $CurrentMP Temporary run data get storage api: Return.CurrentMP
    execute unless score $CurrentMP Temporary matches ..42 run return run scoreboard players reset $CurrentMP Temporary
    scoreboard players reset $CurrentMP Temporary

# MPを42増やす
    data modify storage api: Argument.Fluctuation set value 42
    function api:mp/fluctuation

# スタックを 1 減らす
    execute store result storage asset:context Stack int 1 run data get storage asset:context Stack 0.9999999999
