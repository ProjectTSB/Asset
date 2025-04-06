#> asset:artifact/1251.scale_of_arbit/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# ループ再開
    execute if entity @p[tag=YR.Schedule] run schedule function asset:artifact/1251.scale_of_arbit/trigger/schedule 1t replace
