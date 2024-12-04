#> asset:artifact/1037.grand_flame/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# Markerがいる場合、次Tickの実行予約
    execute if entity @e[type=marker,tag=ST.Marker,limit=1] run schedule function asset:artifact/1037.grand_flame/click/schedule/1.tick 1t replace