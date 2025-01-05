#> asset:effect/0613.white_curse/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0613.white_curse/_/tick

#> Private
# @private
    #declare score_holder $Interval

# スコアへDurationを代入する
    execute store result score $Interval Temporary run data get storage asset:context Duration

# 20tick間隔で演出
    scoreboard players operation $Interval Temporary %= $20 Const
    execute if score $Interval Temporary matches 0 positioned ~ ~1.2 ~ run function asset:effect/0613.white_curse/tick/fx
    scoreboard players reset $Interval Temporary

