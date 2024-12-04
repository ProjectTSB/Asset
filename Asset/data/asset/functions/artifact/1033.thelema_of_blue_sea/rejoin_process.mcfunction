#> asset:artifact/1033.thelema_of_blue_sea/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# プレイヤーのスケジュールループ
    execute if entity @p[scores={SP.WaitingTime=1..}] run schedule function asset:artifact/1033.thelema_of_blue_sea/attack_melee/loop 1t replace

# entityのスケジュールループ
    execute if entity @e[type=#asset:artifact/1033.thelema_of_blue_sea/loop_targets,limit=1] run schedule function asset:artifact/1033.thelema_of_blue_sea/attack_melee/entity/loop 1t replace