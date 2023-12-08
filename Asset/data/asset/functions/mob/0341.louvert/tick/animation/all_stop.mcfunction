#> asset:mob/0341.louvert/tick/animation/all_stop
#
# Animationを停止させる
#
# @within function asset:mob/0341.louvert/**

# タイマーリセット
    scoreboard players set @s 9H.AnimationTick -1

# アニメーションリセット
    scoreboard players set @s 9H.AnimationNum 0

# 停止処理
    execute as @e[type=item_display,tag=9H.Root.This,sort=nearest,limit=1] run function animated_java:louvert/animations/pause_all