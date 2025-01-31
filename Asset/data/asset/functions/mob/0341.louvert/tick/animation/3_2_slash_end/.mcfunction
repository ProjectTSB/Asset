#> asset:mob/0341.louvert/tick/animation/3_2_slash_end/
#
# 広範囲斬撃終了
#
# @within function asset:mob/0341.louvert/tick/animation/

# アニメーション開始
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/03_2_fire_slash_slash_1/play

# 斬撃演出
    execute if score @s 9H.AnimationTick matches 5 run function asset:mob/0341.louvert/tick/animation/3_2_slash_end/slash

# 斬撃演出
    execute if score @s 9H.AnimationTick matches 10 run function asset:mob/0341.louvert/tick/animation/3_2_slash_end/slash

# 斬撃演出
    execute if score @s 9H.AnimationTick matches 15 run function asset:mob/0341.louvert/tick/animation/3_2_slash_end/slash

# 移動と終了
    execute if score @s 9H.AnimationTick matches 21 run function asset:mob/0341.louvert/tick/general/9.animation_end