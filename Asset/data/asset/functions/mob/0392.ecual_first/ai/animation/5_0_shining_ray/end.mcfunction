#> asset:mob/0392.ecual_first/ai/animation/5_0_shining_ray/end
#
# 終了処理
#
# @within function asset:mob/0392.ecual_first/ai/animation/5_0_shining_ray/

# 上位スキル発動トリガー
    tag @s add AW.SuperiorSkill

# 移動モーション移行
    scoreboard players set @s AW.AnimationNum 60
    scoreboard players set @s AW.AnimationTick 0
