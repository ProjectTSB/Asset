#> asset:artifact/1048.thunder_storm/click/4.schedule
#
# スケジュール起動
#
# @within function
#   asset:artifact/1048.thunder_storm/click/
#   asset:artifact/1048.thunder_storm/click/4.schedule
#   asset:artifact/1048.thunder_storm/click/rejoin_process

# Markerを実行者にして起動
    execute as @e[tag=T4.Marker] at @s run function asset:artifact/1048.thunder_storm/click/5.tick

# Markerがまだいたら起動
    execute if entity @e[tag=T4.Marker,limit=1] run schedule function asset:artifact/1048.thunder_storm/click/4.schedule 1t