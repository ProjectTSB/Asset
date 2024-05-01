#> asset:artifact/1079.allochromatic/trigger/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:artifact/load

#> 定義類はここに
# @within function asset:artifact/1079.allochromatic/trigger/**
    scoreboard objectives add TZ.LatestResonanceTick dummy
    scoreboard objectives add TZ.Tick dummy
    scoreboard objectives add TZ.OwnerID dummy
    scoreboard objectives add TZ.Count dummy