#> asset:mob/0341.louvert/tick/animation/9_2_triple_slash_slash/
#
# 三連撃 アニメーション
#
# @within function asset:mob/0341.louvert/tick/animation/

# アニメーション開始
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/09_2_triple_slash_slash/play

# 初撃目
    execute if score @s 9H.AnimationTick matches 3 run function asset:mob/0341.louvert/tick/animation/9_2_triple_slash_slash/first

# 二撃目
    execute if score @s 9H.AnimationTick matches 20 run function asset:mob/0341.louvert/tick/animation/9_2_triple_slash_slash/second

# 三撃目
    execute if score @s 9H.AnimationTick matches 29 run function asset:mob/0341.louvert/tick/animation/9_2_triple_slash_slash/third

# 移動と終了
    execute if score @s 9H.AnimationTick matches 46 run function asset:mob/0341.louvert/tick/general/9.animation_end