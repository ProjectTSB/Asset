#> asset:artifact/0907.rod_of_rain/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# スケジュールループ再開
    execute if entity @e[type=marker,tag=P8.RainCloud,limit=1] run schedule function asset:artifact/0907.rod_of_rain/click/rain_cloud/1.loop 1t replace
