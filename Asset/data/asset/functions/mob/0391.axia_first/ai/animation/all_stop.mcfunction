#> asset:mob/0391.axia_first/ai/animation/all_stop
#
# 全アニメーション 停止
#
# @within function asset:mob/0391.axia_first/**

# タイマーリセット
    scoreboard players set @s AV.AnimationTick -1

# アニメーションリセット
    scoreboard players set @s AV.AnimationNum 0

# 停止処理
    execute as @e[type=item_display,tag=AV.Root.This,distance=..100,sort=nearest,limit=1] run function animated_java:axia/animations/pause_all
