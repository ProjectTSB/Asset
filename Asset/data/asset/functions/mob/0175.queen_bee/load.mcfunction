#> asset:mob/0175.queen_bee/load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0175.queen_bee/**
    scoreboard objectives add 4V.TargetID dummy
    scoreboard objectives add 4V.Skill dummy

#> 眷属のハチとのID紐付け
# @within function
#   asset:mob/0175.queen_bee/**
#   asset:mob/0429.killer_bee_formation/init/
    scoreboard objectives add 4V.QueenID dummy
    scoreboard objectives add 4V.Count dummy
