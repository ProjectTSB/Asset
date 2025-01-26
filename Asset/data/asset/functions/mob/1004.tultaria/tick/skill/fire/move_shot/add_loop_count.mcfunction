#> asset:mob/1004.tultaria/tick/skill/fire/move_shot/add_loop_count
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/move_shot/tick

# スコアボード設定、ループカウント増やして、処理をリスタートするためにTickを-1にする
    scoreboard players add @s RW.LoopCount 1
    scoreboard players set @s General.Mob.Tick -1
