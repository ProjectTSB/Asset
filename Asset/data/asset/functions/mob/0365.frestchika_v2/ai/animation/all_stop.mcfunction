#> asset:mob/0365.frestchika_v2/ai/animation/all_stop
#
# アニメーション完全停止
#
# @within function asset:mob/0365.frestchika_v2/**

# タイマーリセット
    scoreboard players set @s A5.AnimationTick -1

# アニメーションリセット
    scoreboard players set @s A5.AnimationNum 0

# 停止処理
    execute as @e[type=item_display,tag=A5.Root.This,sort=nearest,limit=1] run function animated_java:frestchika_v2/animations/pause_all