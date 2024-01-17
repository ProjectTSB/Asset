#> asset:artifact/1048.thunder_storm/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# Markerがまだいたら起動
    execute if entity @e[tag=T4.Marker,limit=1] run schedule function asset:artifact/1048.thunder_storm/trigger/4.schedule 1t