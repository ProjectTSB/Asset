#> asset:mob/0341.louvert/tick/animation/6_3_moving_end/
#
# 移動終了アニメーション
#
# @within function asset:mob/0341.louvert/tick/animation/

# 回転
    tag @s add 9H.Temp.This
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0341.louvert/tick/general/2.rotate

# アニメーション開始
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/06_3_move_stop/play

# アニメーション終了
    execute if score @s 9H.AnimationTick matches 11 run function asset:mob/0341.louvert/tick/general/4.selected_skill_animation