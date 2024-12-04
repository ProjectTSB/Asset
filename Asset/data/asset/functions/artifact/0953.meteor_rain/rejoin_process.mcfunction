#> asset:artifact/0953.meteor_rain/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# このfunctionをループさせる
    execute if score @s QH.Tick matches 60.. run schedule function asset:artifact/0953.meteor_rain/click/4.emitter_tick 1t
