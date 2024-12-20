#> asset:mob/0341.louvert/tick/animation/10_1_counter/
#
# カウンター
#
# @within function asset:mob/0341.louvert/tick/animation/

# 無敵
    execute if score @s 9H.AnimationTick matches 1 run effect give @s resistance infinite 9 true

# 眼の前にTPする
    execute if score @s 9H.AnimationTick matches 1 run function asset:mob/0341.louvert/tick/animation/10_1_counter/tp

# アニメーション再生
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/10_1_counter/play

# カウンター行使
    execute if score @s 9H.AnimationTick matches 14 run function asset:mob/0341.louvert/tick/animation/10_1_counter/cast

# 無敵解除
    execute if score @s 9H.AnimationTick matches 26 run effect clear @s resistance

# アニメーション終了処理
    execute if score @s 9H.AnimationTick matches 26 run function asset:mob/0341.louvert/tick/animation/1_1_idle/end