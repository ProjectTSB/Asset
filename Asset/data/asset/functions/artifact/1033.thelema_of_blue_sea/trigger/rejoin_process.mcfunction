#> asset:artifact/1033.thelema_of_blue_sea/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# プレイヤーのスケジュールループ
    execute if entity @p[scores={SP.WaitingTime=1..}] run schedule function asset:artifact/1033.thelema_of_blue_sea/trigger/loop 1t replace

# entityのスケジュールループ
    execute if entity @e[type=#asset:artifact/1033.thelema_of_blue_sea/loop_targets,limit=1] run schedule function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/loop 1t replace