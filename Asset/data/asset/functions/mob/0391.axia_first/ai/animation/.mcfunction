#> asset:mob/0391.axia_first/ai/animation/
#
# アニメーション分岐
#
# @within function asset:mob/0391.axia_first/tick/

# 待機　通常
    execute if score @s AV.AnimationNum matches 10 run function asset:mob/0391.axia_first/ai/animation/1_0_idle/

# 待機　レア
    execute if score @s AV.AnimationNum matches 11 run function asset:mob/0391.axia_first/ai/animation/1_1_idle_rare/
