#> asset:mob/0365.frestchika_v2/ai/animation/
#
# アニメーション分岐
#
# @within function asset:mob/0365.frestchika_v2/tick/

# 二連突進 準備
    execute if score @s A5.AnimationNum matches 10 run function asset:mob/0365.frestchika_v2/ai/animation/1_0_tackle_pre/

# 二連突進 移動
    execute if score @s A5.AnimationNum matches 11 run function asset:mob/0365.frestchika_v2/ai/animation/1_1_tackle_move/

# 二連突進 斬撃
    execute if score @s A5.AnimationNum matches 12 run function asset:mob/0365.frestchika_v2/ai/animation/1_2_tackle_slash/

# プラズマショック
    execute if score @s A5.AnimationNum matches 20 run function asset:mob/0365.frestchika_v2/ai/animation/2_0_plasma_shock/

# オープニング
    execute if score @s A5.AnimationNum matches 2000 run function asset:mob/0365.frestchika_v2/ai/animation/200_0_opening/