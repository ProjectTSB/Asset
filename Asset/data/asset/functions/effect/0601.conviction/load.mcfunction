#> asset:effect/0601.conviction/load
#
# Effectに利用するスコアボード等の初期化処理
# ※ExtendsSafeを有効化した状態での使用は非推奨です
#
# @within tag/function asset:effect/load

#> 定義類はここに
# @within function asset:effect/0601.conviction/**
    scoreboard objectives add 601.Tick dummy
