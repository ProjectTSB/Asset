#> asset:artifact/1034.eiya/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# スケジュールループ再開
    execute if entity @p[scores={SQ.WaitingTime=0..}] run schedule function asset:artifact/1034.eiya/attack_melee/schedule 1t replace