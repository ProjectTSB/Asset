#> asset:artifact/0606.traffic_sign/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

execute if entity @e[type=item_display,tag=GU.Sign,limit=1] run schedule function asset:artifact/0606.traffic_sign/attack_melee/4.schedule 1t