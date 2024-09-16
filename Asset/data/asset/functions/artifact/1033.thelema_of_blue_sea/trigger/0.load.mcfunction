#> asset:artifact/1033.thelema_of_blue_sea/trigger/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:artifact/load

#> 定義類はここに
# @within function asset:artifact/1033.thelema_of_blue_sea/trigger/**
    scoreboard objectives add SP.AttackCount dummy
    scoreboard objectives add SP.Tick dummy
    scoreboard objectives add SP.WaitingTime dummy
    scoreboard objectives add SP.UserID dummy
    scoreboard objectives add SP.MaxHealth dummy