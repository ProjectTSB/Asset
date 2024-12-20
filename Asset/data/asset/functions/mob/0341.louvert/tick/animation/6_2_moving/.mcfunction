#> asset:mob/0341.louvert/tick/animation/6_2_moving/
#
# 移動した後の慣性演出
#
# @within function asset:mob/0341.louvert/tick/animation/

# アニメーション開始
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/06_2_moving/play

# 慣性
    execute if score @s 9H.AnimationTick matches 1 at @s positioned ^ ^ ^0.3 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 2 at @s positioned ^ ^ ^0.28 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 3 at @s positioned ^ ^ ^0.26 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 4 at @s positioned ^ ^ ^0.24 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 5 at @s positioned ^ ^ ^0.22 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 6 at @s positioned ^ ^ ^0.2 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 7 at @s positioned ^ ^ ^0.18 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 8 at @s positioned ^ ^ ^0.16 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 9 at @s positioned ^ ^ ^0.14 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 10 at @s positioned ^ ^ ^0.12 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 11 at @s positioned ^ ^ ^0.1 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 12 at @s positioned ^ ^ ^0.08 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 13 at @s positioned ^ ^ ^0.06 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 14 at @s positioned ^ ^ ^0.04 run function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score @s 9H.AnimationTick matches 15 at @s positioned ^ ^ ^0.02 run function asset:mob/0341.louvert/tick/general/1.teleport

# アニメーション終了
    execute if score @s 9H.AnimationTick matches 21 run function asset:mob/0341.louvert/tick/animation/6_2_moving/end