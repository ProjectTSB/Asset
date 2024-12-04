#> asset:artifact/0822.sound_of_a_star/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# スケジュールループ再開
    execute if entity @e[type=marker,tag=MU.Star,limit=1] run schedule function asset:artifact/0822.sound_of_a_star/click/star/01.schedule 1t replace