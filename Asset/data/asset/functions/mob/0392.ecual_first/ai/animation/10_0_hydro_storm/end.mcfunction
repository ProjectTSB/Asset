#> asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/end
#
# 終了処理
#
# @within function asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/

# 上位スキル発動トリガー 外し
    tag @s remove AW.SuperiorSkill

# 移動モーション移行
    scoreboard players set @s AW.AnimationNum 60
    scoreboard players set @s AW.AnimationTick 0
