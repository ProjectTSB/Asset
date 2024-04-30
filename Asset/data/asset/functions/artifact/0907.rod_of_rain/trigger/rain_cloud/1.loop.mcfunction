#> asset:artifact/0907.rod_of_rain/trigger/rain_cloud/1.loop
#
# スケジュールループ
#
# @within function
#   asset:artifact/0907.rod_of_rain/trigger/3.main
#   asset:artifact/0907.rod_of_rain/trigger/rain_cloud/2.main
#   asset:artifact/0907.rod_of_rain/trigger/rejoin_process

# メイン処理
    execute as @e[type=marker,tag=P8.RainCloud] at @s run function asset:artifact/0907.rod_of_rain/trigger/rain_cloud/2.main
