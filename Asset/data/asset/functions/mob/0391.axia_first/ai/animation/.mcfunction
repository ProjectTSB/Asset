#> asset:mob/0391.axia_first/ai/animation/
#
# アニメーション分岐
#
# @within function asset:mob/0391.axia_first/tick/

# 待機　通常
    execute if score @s AV.AnimationNum matches 10 run function asset:mob/0391.axia_first/ai/animation/1_0_idle/

# 待機　レア
    execute if score @s AV.AnimationNum matches 11 run function asset:mob/0391.axia_first/ai/animation/1_1_idle_rare/

# 通常斬撃
    execute if score @s AV.AnimationNum matches 20 run function asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/

# 三連斬撃
    execute if score @s AV.AnimationNum matches 30 run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/
