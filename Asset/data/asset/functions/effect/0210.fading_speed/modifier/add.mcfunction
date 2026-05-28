#> asset:effect/0210.fading_speed/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0210.fading_speed/given/
#   asset:effect/0210.fading_speed/re-given/
#   asset:effect/0210.fading_speed/tick/reduce_stack

#> Private
# @private
    #declare score_holder $Stack
    #declare score_holder $Amount

# そもそもStackが1なら補正を付ける意味がないのでreturn
    execute if data storage asset:context {Stack:1} run return fail

# 移動速度を((Stack - 1) * Amount)% 得る
    execute store result score $Stack Temporary run data get storage asset:context Stack 0.9999999999
    execute store result score $Amount Temporary run data get storage asset:context this.Amount 100
    execute store result storage asset:temp Args.Amount float 0.01 run scoreboard players operation $Stack Temporary *= $Amount Temporary
    function asset:effect/0210.fading_speed/modifier/add.m with storage asset:temp Args

# リセット
    scoreboard players reset $Stack Temporary
    scoreboard players reset $Amount Temporary
    data remove storage asset:temp Args
