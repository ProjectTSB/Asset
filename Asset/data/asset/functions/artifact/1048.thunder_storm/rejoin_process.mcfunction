#> asset:artifact/1048.thunder_storm/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# Markerがまだいたら起動
    execute if entity @e[tag=T4.Marker,limit=1] run schedule function asset:artifact/1048.thunder_storm/click/4.schedule 1t