#> asset:artifact/0606.traffic_sign/trigger/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:artifact/load

#> 定義類はここに
# @within function asset:artifact/0606.traffic_sign/trigger/**
    scoreboard objectives add GU.Count dummy
    scoreboard objectives add GU.OwnerID dummy