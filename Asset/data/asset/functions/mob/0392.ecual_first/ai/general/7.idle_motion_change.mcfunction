#> asset:mob/0392.ecual_first/ai/general/7.idle_motion_change
#
# 待機アニメーション 移行
#
# @within function asset:mob/0392.ecual_first/**

# 待機アニメーション
    scoreboard players set @s AW.AnimationNum 10
    execute if predicate lib:random_pass_per/5 run scoreboard players set @s AW.AnimationNum 11

# アニメーションリセット
    scoreboard players set @s AW.AnimationTick 0
