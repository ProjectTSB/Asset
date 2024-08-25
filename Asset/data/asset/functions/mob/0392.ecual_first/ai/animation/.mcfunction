#> asset:mob/0392.ecual_first/ai/animation/
#
# アニメーション分岐
#
# @within function asset:mob/0392.ecual_first/tick/

# 待機 通常
    execute if score @s AW.AnimationNum matches 10 run function asset:mob/0392.ecual_first/ai/animation/1_0_idle/

# 待機 レア
    execute if score @s AW.AnimationNum matches 11 run function asset:mob/0392.ecual_first/ai/animation/1_1_idle_rare/

# チルレイン
    execute if score @s AW.AnimationNum matches 20 run function asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/

# クリスタル召喚
    execute if score @s AW.AnimationNum matches 30 run function asset:mob/0392.ecual_first/ai/animation/3_0_crystal_turret/

# 魔導書召喚
    execute if score @s AW.AnimationNum matches 40 run function asset:mob/0392.ecual_first/ai/animation/4_0_summon_book/

# シャイニングレイ
    execute if score @s AW.AnimationNum matches 50 run function asset:mob/0392.ecual_first/ai/animation/5_0_shining_ray/
