#> asset:artifact/0606.traffic_sign/trigger/4.schedule
#
# スケジュール起動
#
# @within function
#   asset:artifact/0606.traffic_sign/trigger/3.2.sign_summon
#   asset:artifact/0606.traffic_sign/trigger/4.schedule
#   asset:artifact/0606.traffic_sign/trigger/rejoin_process

execute as @e[type=item_display,tag=GU.Sign] at @s run function asset:artifact/0606.traffic_sign/trigger/4.1.schedule_tick

execute if entity @e[type=item_display,tag=GU.Sign,limit=1] run schedule function asset:artifact/0606.traffic_sign/trigger/4.schedule 1t