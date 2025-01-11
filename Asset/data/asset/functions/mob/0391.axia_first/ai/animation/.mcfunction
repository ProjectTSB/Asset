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

# なぎなぎ教授
    execute if score @s AV.AnimationNum matches 40 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/

# 通常移動
    execute if score @s AV.AnimationNum matches 60 run function asset:mob/0391.axia_first/ai/animation/6_0_moving_forward/

# 居合い切り移動
    execute if score @s AV.AnimationNum matches 62 run function asset:mob/0391.axia_first/ai/animation/6_2_moving_iai/

# スピン移動
    execute if score @s AV.AnimationNum matches 63 run function asset:mob/0391.axia_first/ai/animation/6_3_moving_spin/

# 斬撃砲
    execute if score @s AV.AnimationNum matches 70 run function asset:mob/0391.axia_first/ai/animation/7_0_zangekihou/

# ワープ斬撃（隙ありアリー！）
    execute if score @s AV.AnimationNum matches 80 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/

# ディメンションソード
    execute if score @s AV.AnimationNum matches 90 run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/

# 紅雷
    execute if score @s AV.AnimationNum matches 100 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/

# 被弾アニメーション1
    execute if score @s AV.AnimationNum matches 990 run function asset:mob/0391.axia_first/ai/animation/99_0_damaged_1/

# 被弾アニメーション2
    execute if score @s AV.AnimationNum matches 991 run function asset:mob/0391.axia_first/ai/animation/99_1_damaged_2/

# オープニングアタック
    execute if score @s AV.AnimationNum matches 1000 run function asset:mob/0391.axia_first/ai/animation/100_0_opening/
