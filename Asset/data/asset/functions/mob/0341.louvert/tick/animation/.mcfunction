#> asset:mob/0341.louvert/tick/animation/
#
# アニメーション分岐
#
# @within function asset:mob/0341.louvert/tick/2.tick

# 待機
    execute if score @s 9H.AnimationNum matches 11 run function asset:mob/0341.louvert/tick/animation/1_1_idle/

# 移動開始
    execute if score @s 9H.AnimationNum matches 61 run function asset:mob/0341.louvert/tick/animation/6_1_move_start/

# 移動慣性
    execute if score @s 9H.AnimationNum matches 62 run function asset:mob/0341.louvert/tick/animation/6_2_moving/

# オープニング
    execute if score @s 9H.AnimationNum matches 121 run function asset:mob/0341.louvert/tick/animation/12_1_opening/