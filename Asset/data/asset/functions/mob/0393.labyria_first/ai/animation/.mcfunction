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

# 居合射撃
    execute if score @s AZ.AnimationNum matches 50 run function asset:mob/0393.labyria_first/ai/animation/5_0_sw_ms_warp/

# スモークボム
    execute if score @s AZ.AnimationNum matches 60 run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/

# サンダーグレネード
    execute if score @s AZ.AnimationNum matches 70 run function asset:mob/0393.labyria_first/ai/animation/7_0_sw_thunder_grenade/

# 雷轟斬
    execute if score @s AZ.AnimationNum matches 80 run function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/

# 雷神無双
    execute if score @s AZ.AnimationNum matches 90 run function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/
