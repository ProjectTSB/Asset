#> asset:artifact/1045.mini_black_hole/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# Markerがいる場合、次Tickの実行予約
    execute if entity @e[type=marker,tag=T1.Marker,limit=1] run schedule function asset:artifact/1045.mini_black_hole/trigger/schedule/1.tick 1t replace