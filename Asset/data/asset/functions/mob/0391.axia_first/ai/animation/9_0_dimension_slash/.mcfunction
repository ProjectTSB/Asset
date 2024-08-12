#> asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/
#
# ディメンションソード アニメーション
#
# @within function asset:mob/0391.axia_first/ai/animation/

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/11_0_dimension_slash/play

# アニメーション終了処理
    execute if score @s AV.AnimationTick matches 191 run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/end
