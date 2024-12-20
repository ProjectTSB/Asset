#> asset:mob/0341.louvert/tick/animation/
#
# アニメーション分岐
#
# @within function asset:mob/0341.louvert/tick/

# 待機
    execute if score @s 9H.AnimationNum matches 11 run function asset:mob/0341.louvert/tick/animation/1_1_idle/

# 怯み1
    execute if score @s 9H.AnimationNum matches 21 run function asset:mob/0341.louvert/tick/animation/2_1_damaged/

# 怯み2
    execute if score @s 9H.AnimationNum matches 22 run function asset:mob/0341.louvert/tick/animation/2_2_damaged/

# 広範囲斬撃開始
    execute if score @s 9H.AnimationNum matches 31 run function asset:mob/0341.louvert/tick/animation/3_1_slash_start/

# 広範囲斬撃終了
    execute if score @s 9H.AnimationNum matches 32 run function asset:mob/0341.louvert/tick/animation/3_2_slash_end/

# メテオ 詠唱
    execute if score @s 9H.AnimationNum matches 41 run function asset:mob/0341.louvert/tick/animation/4_1_meteor/

# ブレードカッター
    execute if score @s 9H.AnimationNum matches 51 run function asset:mob/0341.louvert/tick/animation/5_1_blade_cutter/
    
# 移動開始
    execute if score @s 9H.AnimationNum matches 61 run function asset:mob/0341.louvert/tick/animation/6_1_move_start/

# 移動慣性
    execute if score @s 9H.AnimationNum matches 62 run function asset:mob/0341.louvert/tick/animation/6_2_moving/

# 移動終了
    execute if score @s 9H.AnimationNum matches 63 run function asset:mob/0341.louvert/tick/animation/6_3_moving_end/

# 移動攻撃1
    execute if score @s 9H.AnimationNum matches 64 run function asset:mob/0341.louvert/tick/animation/6_4_moving_attack/

# ソウルブラスト
    execute if score @s 9H.AnimationNum matches 71 run function asset:mob/0341.louvert/tick/animation/7_1_soul_cast/

# 三連撃 開始
    execute if score @s 9H.AnimationNum matches 91 run function asset:mob/0341.louvert/tick/animation/9_1_triple_slash_start/

# 三連撃 終了
    execute if score @s 9H.AnimationNum matches 92 run function asset:mob/0341.louvert/tick/animation/9_2_triple_slash_slash/

# カウンター
    execute if score @s 9H.AnimationNum matches 101 run function asset:mob/0341.louvert/tick/animation/10_1_counter/
 
# 火炎陣 発動
    execute if score @s 9H.AnimationNum matches 111 run function asset:mob/0341.louvert/tick/animation/11_1_cast_magic/

# ボム 発動
    execute if score @s 9H.AnimationNum matches 112 run function asset:mob/0341.louvert/tick/animation/11_2_set_bomb/

# オープニング
    execute if score @s 9H.AnimationNum matches 121 run function asset:mob/0341.louvert/tick/animation/12_1_opening/

# 刺突落下
    execute if score @s 9H.AnimationNum matches 141 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/

# ラストスペル 開始
    execute if score @s 9H.AnimationNum matches 151 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/

# ラストスペル 居合
    execute if score @s 9H.AnimationNum matches 152 run function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/

# ラストスペル 弾幕ゲー
    execute if score @s 9H.AnimationNum matches 153 run function asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/

# ラストスペル 刺突
    execute if score @s 9H.AnimationNum matches 154 run function asset:mob/0341.louvert/tick/animation/15_4_final_spell_fall_strike/
