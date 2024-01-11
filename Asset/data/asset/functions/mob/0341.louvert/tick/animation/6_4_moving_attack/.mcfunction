#> asset:mob/0341.louvert/tick/animation/6_4_moving_attack/
#
# 移動後アタック
#
# @within function asset:mob/0341.louvert/tick/animation/

# 回転
    tag @s add 9H.Temp.This
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0341.louvert/tick/general/2.rotate

# アニメーション開始
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/06_4_move_attack/play

# 回転斬り演出
    execute if score @s 9H.AnimationTick matches 18 run function asset:mob/0341.louvert/tick/animation/6_4_moving_attack/slash

# 回転斬り演出
    execute if score @s 9H.AnimationTick matches 28 run function asset:mob/0341.louvert/tick/animation/6_4_moving_attack/slash

# 回転斬り演出
    execute if score @s 9H.AnimationTick matches 38 run function asset:mob/0341.louvert/tick/animation/6_4_moving_attack/slash

# アニメーション終了
    execute if score @s 9H.AnimationTick matches 66 run function asset:mob/0341.louvert/tick/general/4.selected_skill_animation