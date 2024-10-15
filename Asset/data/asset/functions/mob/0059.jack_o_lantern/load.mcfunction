#> asset:mob/0059.jack_o_lantern/load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0059.jack_o_lantern/**
    scoreboard objectives add 1N.Tick dummy
    scoreboard objectives add 1N.2ndTick dummy
    scoreboard objectives add 1N.FakeCount dummy
    scoreboard objectives add 1N.Interval dummy
