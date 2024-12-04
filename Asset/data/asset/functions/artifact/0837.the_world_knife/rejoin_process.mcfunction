#> asset:artifact/0837.the_world_knife/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# Scheduleループ
    execute if entity @e[type=armor_stand,tag=N9.Knife,limit=1] run schedule function asset:artifact/0837.the_world_knife/click/knife/1.tick 1t replace
