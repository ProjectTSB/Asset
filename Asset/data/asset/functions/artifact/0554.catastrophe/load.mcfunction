#> asset:artifact/0554.catastrophe/load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:artifact/load

#> 定義類はここに
# @within function
#   asset:artifact/055?.catastrophe/**
#   asset:effect/0262.catastrophe/**
    scoreboard objectives add FE.LatestUseTick dummy
    scoreboard objectives add FE.DamageSum dummy
