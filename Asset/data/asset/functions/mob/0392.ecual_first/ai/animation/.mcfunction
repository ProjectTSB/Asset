#> asset:mob/0392.ecual_first/ai/animation/
#
# アニメーション分岐
#
# @within function asset:mob/0392.ecual_first/tick/

# 待機 通常
    execute if score @s AW.AnimationNum matches 10 run function asset:mob/0392.ecual_first/ai/animation/1_0_idle/

# 待機 レア
    execute if score @s AW.AnimationNum matches 11 run function asset:mob/0392.ecual_first/ai/animation/1_1_idle_rare/

# 待機 ロング
    execute if score @s AW.AnimationNum matches 12 run function asset:mob/0392.ecual_first/ai/animation/1_2_idle_long/

# チルレイン
    execute if score @s AW.AnimationNum matches 20 run function asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/

# クリスタル召喚
    execute if score @s AW.AnimationNum matches 30 run function asset:mob/0392.ecual_first/ai/animation/3_0_crystal_turret/

# 魔導書召喚
    execute if score @s AW.AnimationNum matches 40 run function asset:mob/0392.ecual_first/ai/animation/4_0_summon_book/

# シャイニングレイ
    execute if score @s AW.AnimationNum matches 50 run function asset:mob/0392.ecual_first/ai/animation/5_0_shining_ray/

# ウォーターバレット
    execute if score @s AW.AnimationNum matches 51 run function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/

# 移動
    execute if score @s AW.AnimationNum matches 60 run function asset:mob/0392.ecual_first/ai/animation/6_0_moving/

# ホーリーレイ
    execute if score @s AW.AnimationNum matches 70 run function asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/

# クワイタスレイン
    execute if score @s AW.AnimationNum matches 80 run function asset:mob/0392.ecual_first/ai/animation/8_0_quietus_rain/

# ウォーターウォール
    execute if score @s AW.AnimationNum matches 90 run function asset:mob/0392.ecual_first/ai/animation/9_0_water_wall/

# ハイドロストーム
    execute if score @s AW.AnimationNum matches 100 run function asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/

# 被弾1
    execute if score @s AW.AnimationNum matches 990 run function asset:mob/0392.ecual_first/ai/animation/99_0_damaged_1/

# 被弾2
    execute if score @s AW.AnimationNum matches 991 run function asset:mob/0392.ecual_first/ai/animation/99_1_damaged_2/

# オープニング
    execute if score @s AW.AnimationNum matches 1000 run function asset:mob/0392.ecual_first/ai/animation/100_0_opening/
