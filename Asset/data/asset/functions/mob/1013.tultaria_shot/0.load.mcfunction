#> asset:mob/1013.tultaria_shot/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function
#   asset:mob/1013.tultaria_shot/**
#   asset:mob/1004.tultaria/tick/skill/mini/spread_shot/shoot/summon
    scoreboard objectives add S5.Tick dummy
    scoreboard objectives add S5.Speed dummy
