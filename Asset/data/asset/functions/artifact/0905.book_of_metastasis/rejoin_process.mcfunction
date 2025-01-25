#> asset:artifact/0905.book_of_metastasis/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# Scheduleループ
    execute if entity @e[type=area_effect_cloud,tag=P5.Bullet,limit=1] run schedule function asset:artifact/0905.book_of_metastasis/click/4.schedule 1t replace