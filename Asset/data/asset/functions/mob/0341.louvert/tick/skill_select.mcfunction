#> asset:mob/0341.louvert/tick/skill_select
#
# スキル選択
#
# @within function asset:mob/0341.louvert/tick/

# スキルを選択する
    execute if score @s 9H.HPPer matches 80..100 store result score @s 9H.SkillSelect run random value 1..4
    execute if score @s 9H.HPPer matches 60..79 store result score @s 9H.SkillSelect run random value 1..5
    execute if score @s 9H.HPPer matches 40..59 store result score @s 9H.SkillSelect run random value 1..6
    execute if score @s 9H.HPPer matches 20..39 store result score @s 9H.SkillSelect run random value 1..7
    execute if score @s 9H.HPPer matches ..19 store result score @s 9H.SkillSelect run random value 1..8

# 移動モーションに以降
    scoreboard players set @s 9H.AnimationTick 0
    scoreboard players set @s 9H.AnimationNum 61
