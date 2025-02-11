#> asset:mob/0393.labyria_first/ai/animation/all_stop
#
# 全アニメーション 停止
#
# @within function asset:mob/0391.axia_first/**

# タイマーリセット
    scoreboard players set @s AX.AnimationTick -1

# アニメーションリセット
    scoreboard players set @s AX.AnimationNum 0

# 停止処理
    execute as @e[type=item_display,tag=AX.Root.This,distance=..100,sort=nearest,limit=1] run function animated_java:labyria/animations/pause_all
