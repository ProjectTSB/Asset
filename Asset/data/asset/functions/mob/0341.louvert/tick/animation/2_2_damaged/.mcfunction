#> asset:mob/0341.louvert/tick/animation/2_2_damaged/
#
# ダメージを受けた時のアニメーション2
#
# @within function asset:mob/0341.louvert/tick/animation/

# 後ろにのけぞる
    execute if score @s 9H.AnimationTick matches 1 positioned ^ ^ ^-1 run function asset:mob/0341.louvert/tick/general/1.teleport

# アニメーション再生
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/02_2_damage/play

# アニメーション終了処理
    execute if score @s 9H.AnimationTick matches 26 run function asset:mob/0341.louvert/tick/general/9.animation_end