#> asset:mob/0392.ecual_first/ai/animation/all_stop
#
# 全アニメーション停止
#
# @within function asset:mob/0392.ecual_first/**

# タイマーリセット
    scoreboard players set @s AW.AnimationTick -1

# アニメーションリセット
    scoreboard players set @s AW.AnimationNum 0

# 停止処理
    execute as @e[type=item_display,tag=AW.Root.This,distance=..100,sort=nearest,limit=1] run function animated_java:ecual/animations/pause_all
