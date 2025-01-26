#> asset:artifact/1141.bell_of_courage/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# 1tick後に実行
    execute if entity @p[tag=VP.Schedule] run schedule function asset:artifact/1141.bell_of_courage/trigger/schedule 1t replace
