#> asset:mob/0060.self_destructor/tick/force_explode
#
#
#
# @within function asset:mob/0060.self_destructor/tick/

#> Private
# @private
    #declare score_holder $Interval

# カウントダウンが0以下ならreturn
    execute if data storage asset:context this{Countdown:0} run return fail

# 一定間隔でカウントダウン進行
    scoreboard players operation $Interval Temporary = @s 1O.ForceExplodeCnt
    scoreboard players operation $Interval Temporary %= $4 Const
    execute if score $Interval Temporary matches 0 run function asset:mob/0060.self_destructor/count_down/
    scoreboard players reset $Interval Temporary

# スコアを進める
    scoreboard players add @s 1O.ForceExplodeCnt 1
