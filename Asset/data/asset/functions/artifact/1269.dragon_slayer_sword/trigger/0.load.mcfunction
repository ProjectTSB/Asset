#> asset:artifact/1269.dragon_slayer_sword/trigger/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:artifact/load

#> 定義類はここに
# @within function asset:artifact/1269.dragon_slayer_sword/**
    scoreboard objectives add Z9.Charge dummy
    scoreboard objectives add Z9.LatestChargeTick dummy
