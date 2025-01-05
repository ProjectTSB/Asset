#> asset:artifact/0606.traffic_sign/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

execute if entity @e[type=item_display,tag=GU.Sign,limit=1] run schedule function asset:artifact/0606.traffic_sign/trigger/4.schedule 1t