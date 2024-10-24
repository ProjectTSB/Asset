#> asset:mob/1004.tultaria/tick/skill/move_shot/add_loop_count
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/move_shot/tick

# アニメストップ
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_3_right_loop/stop

# スコアボード設定、ループカウント増やして、処理をリスタートするためにTickを-1にする
    scoreboard players add @s RW.LoopCount 1
    scoreboard players set @s RW.Tick -1
