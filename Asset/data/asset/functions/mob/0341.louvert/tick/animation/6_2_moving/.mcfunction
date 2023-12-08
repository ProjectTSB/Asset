#> asset:mob/0341.louvert/tick/animation/6_2_moving/
#
# 移動した後の慣性演出
#
# @within function asset:mob/0341.louvert/tick/animation/

# アニメーション開始
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This] run function animated_java:louvert/animations/06_2_moving/play

    tellraw @a {"score":{"name":"@s","objective":"9H.AnimationTick"}}

# 慣性
    execute if score @s 9H.AnimationTick matches 1 run tp @s ^ ^ ^0.2 ~ ~
    execute if score @s 9H.AnimationTick matches 2 run tp @s ^ ^ ^0.18 ~ ~
    execute if score @s 9H.AnimationTick matches 3 run tp @s ^ ^ ^0.16 ~ ~
    execute if score @s 9H.AnimationTick matches 4 run tp @s ^ ^ ^0.14 ~ ~
    execute if score @s 9H.AnimationTick matches 5 run tp @s ^ ^ ^0.12 ~ ~
    execute if score @s 9H.AnimationTick matches 6 run tp @s ^ ^ ^0.1 ~ ~
    execute if score @s 9H.AnimationTick matches 7 run tp @s ^ ^ ^0.08 ~ ~
    execute if score @s 9H.AnimationTick matches 8 run tp @s ^ ^ ^0.06 ~ ~
    execute if score @s 9H.AnimationTick matches 9 run tp @s ^ ^ ^0.04 ~ ~
    execute if score @s 9H.AnimationTick matches 10 run tp @s ^ ^ ^0.02 ~ ~

# アニメーション終了
    execute if score @s 9H.AnimationTick matches 21 run scoreboard players set @s 9H.AnimationNum 63
    execute if score @s 9H.AnimationTick matches 21 run scoreboard players set @s 9H.AnimationTick 0