#> asset:artifact/1034.eiya/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# スケジュールループ再開
    execute if entity @p[scores={SQ.WaitingTime=0..}] run schedule function asset:artifact/1034.eiya/trigger/schedule 1t replace