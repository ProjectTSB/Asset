#> asset:mob/0393.labyria_first/ai/animation/
#
# アニメーション分岐
#
# @within function asset:mob/0393.labyria_first/tick/

# 待機 ソード通常
    execute if score @s AX.AnimationNum matches 10 run function asset:mob/0393.labyria_first/ai/animation/1_0_sw_idle/

# 待機 ソードレア
    execute if score @s AX.AnimationNum matches 11 run function asset:mob/0393.labyria_first/ai/animation/1_1_sw_idle_rare/

# 待機 銃通常
    execute if score @s AX.AnimationNum matches 12 run function asset:mob/0393.labyria_first/ai/animation/1_2_ms_idle/

# 移動開始　ソード
    execute if score @s AX.AnimationNum matches 20 run function asset:mob/0393.labyria_first/ai/animation/2_0_sw_move_start/

# 移動開始　マスケット
    execute if score @s AX.AnimationNum matches 21 run function asset:mob/0393.labyria_first/ai/animation/2_1_ms_move_start/

# 移動終了　ソード
    execute if score @s AX.AnimationNum matches 22 run function asset:mob/0393.labyria_first/ai/animation/2_2_sw_move_end/

# 移動終了　マスケット
    execute if score @s AX.AnimationNum matches 23 run function asset:mob/0393.labyria_first/ai/animation/2_3_ms_move_end/

# 銃三連射
    execute if score @s AX.AnimationNum matches 30 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/

# ワープ斬り
    execute if score @s AX.AnimationNum matches 40 run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/

# 居合射撃
    execute if score @s AX.AnimationNum matches 50 run function asset:mob/0393.labyria_first/ai/animation/5_0_sw_ms_warp/

# スモークボム
    execute if score @s AX.AnimationNum matches 60 run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/

# サンダーグレネード
    execute if score @s AX.AnimationNum matches 70 run function asset:mob/0393.labyria_first/ai/animation/7_0_sw_thunder_grenade/

# 雷轟斬
    execute if score @s AX.AnimationNum matches 80 run function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/

# 雷神無双
    execute if score @s AX.AnimationNum matches 90 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/

# ノヴァ
    execute if score @s AX.AnimationNum matches 100 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/

# ディザスター・ディバイン
    execute if score @s AX.AnimationNum matches 110 run function asset:mob/0393.labyria_first/ai/animation/11_0_sw_disaster_divine/

# 魔弾7連射
    execute if score @s AX.AnimationNum matches 120 run function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/

# ヘキサレーザー
    execute if score @s AX.AnimationNum matches 130 run function asset:mob/0393.labyria_first/ai/animation/13_0_ms_hexa_laser/

# 雷槍
    execute if score @s AX.AnimationNum matches 140 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/

# スタン（ソード）
    execute if score @s AX.AnimationNum matches 990 run function asset:mob/0393.labyria_first/ai/animation/99_0_sw_stan/

# スタン（マスケット）
    execute if score @s AX.AnimationNum matches 991 run function asset:mob/0393.labyria_first/ai/animation/99_1_ms_stan/

# オープニング
    execute if score @s AX.AnimationNum matches 1000 run function asset:mob/0393.labyria_first/ai/animation/100_0_opening/
