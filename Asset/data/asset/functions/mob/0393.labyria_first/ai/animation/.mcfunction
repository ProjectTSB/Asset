#> asset:mob/0393.labyria_first/ai/animation/
#
# アニメーション分岐
#
# @within function asset:mob/0393.labyria_first/tick/

# 待機 ソード通常
    execute if score @s AZ.AnimationNum matches 10 run function asset:mob/0393.labyria_first/ai/animation/1_0_sw_idle/

# 待機 ソードレア
    execute if score @s AZ.AnimationNum matches 11 run function asset:mob/0393.labyria_first/ai/animation/1_1_sw_idle_rare/

# 待機 銃通常
    execute if score @s AZ.AnimationNum matches 12 run function asset:mob/0393.labyria_first/ai/animation/1_2_ms_idle/

# 銃三連射
    execute if score @s AZ.AnimationNum matches 30 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/

# ワープ斬り
    execute if score @s AZ.AnimationNum matches 40 run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/
