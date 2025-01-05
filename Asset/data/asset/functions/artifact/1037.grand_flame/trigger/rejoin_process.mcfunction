#> asset:artifact/1037.grand_flame/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# Markerがいる場合、次Tickの実行予約
    execute if entity @e[type=marker,tag=ST.Marker,limit=1] run schedule function asset:artifact/1037.grand_flame/trigger/schedule/1.tick 1t replace