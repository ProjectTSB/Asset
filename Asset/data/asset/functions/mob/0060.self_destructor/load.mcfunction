#> asset:mob/0060.self_destructor/load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0060.self_destructor/**
    scoreboard objectives add 1O.ExplodeFuse dummy
    scoreboard objectives add 1O.ForceExplodeCnt dummy
