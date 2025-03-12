#> asset:mob/0175.queen_bee/tick/skill/reset
#
# 共通リセット処理
#
# @within function asset:mob/0175.queen_bee/tick/skill/**

# Tagを削除
    tag @s remove 4V.SkillTackle
    tag @s remove 4V.SkillGrandSlam
    tag @s remove 4V.SkillSummon
    tag @s remove 4V.SkillNeedle

    scoreboard players set @s General.Mob.Tick -60
