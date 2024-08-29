#> asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/end
#
# 終了処理
#
# @within function asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/

# 上位スキル発動トリガー 外し
    tag @s remove AW.SuperiorSkill

# 移動モーション移行
    scoreboard players set @s AW.AnimationNum 60
    scoreboard players set @s AW.AnimationTick 0
