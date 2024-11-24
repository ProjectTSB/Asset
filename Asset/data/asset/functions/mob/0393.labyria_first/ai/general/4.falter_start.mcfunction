#> asset:mob/0393.labyria_first/ai/general/4.falter_start
#
# 怯みアニメーション 開始
#
# @within function asset:mob/0393.labyria_first/**

# 停止処理
    execute as @e[type=item_display,tag=AX.Root.This,distance=..100,sort=nearest,limit=1] run function animated_java:labyria/animations/pause_all

# 怯みアニメーション
    execute if score @s AX.AnimationNum matches 10..11 run scoreboard players set @s AX.AnimationNum 990
    execute if score @s AX.AnimationNum matches 12 run scoreboard players set @s AX.AnimationNum 991

# アニメーションリセット
    scoreboard players set @s AX.AnimationTick 0

# 怯み回数をリセット
    scoreboard players set @s AX.FalterCount 0
