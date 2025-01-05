#> asset:effect/0125.levitation/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0125.levitation/_/tick

#> Private
# @private
    #declare score_holder $Stack

# 浮遊を付与
    execute store result score $Stack Temporary run data get storage asset:context Stack
    execute store result storage asset:temp 125.Stack int 1 run scoreboard players remove $Stack Temporary 1
    function asset:effect/0125.levitation/tick/give.m with storage asset:temp 125
    data remove storage asset:temp 125
    scoreboard players reset $Stack Temporary
