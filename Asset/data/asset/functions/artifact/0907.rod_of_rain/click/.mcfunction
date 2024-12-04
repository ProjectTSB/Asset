#> asset:artifact/0907.rod_of_rain/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/907/click/


# 雨雲を召喚
    summon marker ~ ~6 ~ {Tags:["P8.RainCloud","Object","Uninterferable"]}
    execute positioned ~ ~6 ~ run scoreboard players operation @e[type=marker,tag=P8.RainCloud,distance=..0.01] P8.UserID = @s UserID

# スケジュールループスタート
    schedule function asset:artifact/0907.rod_of_rain/click/rain_cloud/1.loop 1t replace
