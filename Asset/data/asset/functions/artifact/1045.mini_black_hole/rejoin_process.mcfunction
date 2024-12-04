#> asset:artifact/1045.mini_black_hole/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# Markerがいる場合、次Tickの実行予約
    execute if entity @e[type=marker,tag=T1.Marker,limit=1] run schedule function asset:artifact/1045.mini_black_hole/click/schedule/1.tick 1t replace