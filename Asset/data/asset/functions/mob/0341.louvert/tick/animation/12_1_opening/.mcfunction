#> asset:mob/0341.louvert/tick/animation/12_1_opening/
#
# オープニングアニメーション
#
# @within function asset:mob/0341.louvert/tick/animation/

# アニメーション再生
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/12_1_opening/play

# 演出
    execute if score @s 9H.AnimationTick matches 45 run function asset:mob/0341.louvert/tick/animation/12_1_opening/sound

# 先制攻撃
    execute if score @s 9H.AnimationTick matches 75 run function asset:mob/0341.louvert/tick/animation/12_1_opening/first_attack

# アニメーション終了処理
    execute if score @s 9H.AnimationTick matches 101 run function asset:mob/0341.louvert/tick/general/9.animation_end
