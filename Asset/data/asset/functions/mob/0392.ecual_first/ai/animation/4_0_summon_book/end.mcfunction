#> asset:mob/0392.ecual_first/ai/animation/4_0_summon_book/end
#
# 終了処理
#
# @within function asset:mob/0392.ecual_first/ai/animation/4_0_summon_book/

# 上位スキル発動トリガー 外し
    tag @s add AW.SuperiorSkill

# 待機（長）モーション移行
    scoreboard players set @s AW.AnimationNum 12
    scoreboard players set @s AW.AnimationTick 0
