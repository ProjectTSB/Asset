#> asset:artifact/0610.call_fish/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# 再帰処理
    execute if entity @e[type=cod,tag=GY.Fish,limit=1] run schedule function asset:artifact/0610.call_fish/click/3.1.tick 1t replace