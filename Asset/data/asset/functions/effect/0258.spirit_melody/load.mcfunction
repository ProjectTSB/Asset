#> asset:effect/0258.spirit_melody/load
#
# Effectに利用するスコアボード等の初期化処理
# ※ExtendsSafeを有効化した状態での使用は非推奨です
#
# @within tag/function asset:effect/load

#> 定義類はここに
# @within function asset:effect/0258.spirit_melody/**
    scoreboard objectives add 258.Tick dummy
    scoreboard objectives add 258.Note dummy
    scoreboard objectives add 258.RunCount dummy
