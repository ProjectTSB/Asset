#> asset:mob/0341.louvert/tick/3.skill_select
#
# スキル選択
#
# @within function asset:mob/0341.louvert/tick/2.tick

# スキルを選択する
    scoreboard players set @s 9H.SkillSelect 6

# 移動モーションに以降
    scoreboard players set @s 9H.AnimationTick 0
    scoreboard players set @s 9H.AnimationNum 61