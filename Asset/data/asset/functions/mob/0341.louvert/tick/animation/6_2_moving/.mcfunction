#> asset:mob/0341.louvert/tick/animation/6_2_moving/
#
# 移動した後の慣性演出
#
# @within function asset:mob/0341.louvert/tick/animation/

# アニメーション開始
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/06_2_moving/play

# 慣性
    execute if score @s 9H.AnimationTick matches 1 at @s run tp @s ^ ^ ^0.3 ~ ~
    execute if score @s 9H.AnimationTick matches 2 at @s run tp @s ^ ^ ^0.28 ~ ~
    execute if score @s 9H.AnimationTick matches 3 at @s run tp @s ^ ^ ^0.26 ~ ~
    execute if score @s 9H.AnimationTick matches 4 at @s run tp @s ^ ^ ^0.24 ~ ~
    execute if score @s 9H.AnimationTick matches 5 at @s run tp @s ^ ^ ^0.22 ~ ~
    execute if score @s 9H.AnimationTick matches 6 at @s run tp @s ^ ^ ^0.2 ~ ~
    execute if score @s 9H.AnimationTick matches 7 at @s run tp @s ^ ^ ^0.18 ~ ~
    execute if score @s 9H.AnimationTick matches 8 at @s run tp @s ^ ^ ^0.16 ~ ~
    execute if score @s 9H.AnimationTick matches 9 at @s run tp @s ^ ^ ^0.14 ~ ~
    execute if score @s 9H.AnimationTick matches 10 at @s run tp @s ^ ^ ^0.12 ~ ~
    execute if score @s 9H.AnimationTick matches 11 at @s run tp @s ^ ^ ^0.1 ~ ~
    execute if score @s 9H.AnimationTick matches 12 at @s run tp @s ^ ^ ^0.08 ~ ~
    execute if score @s 9H.AnimationTick matches 13 at @s run tp @s ^ ^ ^0.06 ~ ~
    execute if score @s 9H.AnimationTick matches 14 at @s run tp @s ^ ^ ^0.04 ~ ~
    execute if score @s 9H.AnimationTick matches 15 at @s run tp @s ^ ^ ^0.02 ~ ~

# アニメーション終了
    execute if score @s 9H.AnimationTick matches 21 run function asset:mob/0341.louvert/tick/animation/6_2_moving/end