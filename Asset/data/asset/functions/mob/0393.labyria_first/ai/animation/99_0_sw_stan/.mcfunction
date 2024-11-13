#> asset:mob/0393.labyria_first/ai/animation/99_0_sw_stan/
#
# スタン
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# アニメーション再生
    execute if score @s AZ.AnimationTick matches 1 as @e[type=item_display,tag=AZ.Root.This,distance=..100] run function animated_java:labyria/animations/15_0_sw_stan/play

# アニメーション終了処理
    execute if score @s AZ.AnimationTick matches 140 run function asset:mob/0393.labyria_first/ai/animation/99_0_sw_stan/end
