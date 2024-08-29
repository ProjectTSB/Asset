#> asset:mob/0392.ecual_first/ai/animation/3_0_crystal_turret/end
#
# 終了処理
#
# @within function asset:mob/0392.ecual_first/ai/animation/3_0_crystal_turret/

# 上位スキル発動トリガー 外し
    tag @s add AW.SuperiorSkill

# 待機（長）モーション移行
    scoreboard players set @s AW.AnimationNum 12
    scoreboard players set @s AW.AnimationTick 0
