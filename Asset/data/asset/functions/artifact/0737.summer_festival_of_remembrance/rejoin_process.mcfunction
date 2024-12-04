#> asset:artifact/0737.summer_festival_of_remembrance/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# ループ再開
    execute if entity @e[type=marker,tag=KH.FireworkCore,limit=1] run schedule function asset:artifact/0737.summer_festival_of_remembrance/click/firework_process/core/loop 1t replace