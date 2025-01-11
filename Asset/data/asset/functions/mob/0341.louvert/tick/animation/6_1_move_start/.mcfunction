#> asset:mob/0341.louvert/tick/animation/6_1_move_start/
#
# 移動開始
#
# @within function asset:mob/0341.louvert/tick/animation/

# アニメーション開始
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/06_1_move_start/play
    execute if score @s 9H.AnimationTick matches 1 run function asset:mob/0341.louvert/tick/animation/6_1_move_start/move_point_setting
# 移動と終了
    execute if score @s 9H.AnimationTick matches 11 run function asset:mob/0341.louvert/tick/animation/6_1_move_start/end