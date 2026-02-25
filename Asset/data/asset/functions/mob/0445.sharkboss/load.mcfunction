#> asset:mob/0445.sharkboss/load
#
# Mobに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0445.sharkboss/**
    scoreboard objectives add CD.Timer dummy
    scoreboard objectives add CD.AnimationTimer dummy
    scoreboard objectives add CD.ElectrifiedActionCounter dummy
    scoreboard objectives add CD.TransitionCounter dummy
    scoreboard objectives add CD.DpsCheckThreshold dummy
    #↑後でリセットも書いておこう
