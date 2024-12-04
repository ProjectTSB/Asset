#> asset:artifact/0793.queen_bee_rocket/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# Schedule
    execute if entity @e[type=item_display,tag=M1.Bee] run schedule function asset:artifact/0793.queen_bee_rocket/click/schedule_loop 1t replace