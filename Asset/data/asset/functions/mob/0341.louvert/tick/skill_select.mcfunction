#> asset:mob/0341.louvert/tick/skill_select
#
# スキル選択
#
# @within function asset:mob/0341.louvert/tick/

# スキルを選択する
    execute store result score @s 9H.SkillSelect run function lib:random/
    execute if score @s 9H.HPPer matches 80..100 run scoreboard players operation @s 9H.SkillSelect %= $4 Const
    execute if score @s 9H.HPPer matches 60..79 run scoreboard players operation @s 9H.SkillSelect %= $5 Const
    execute if score @s 9H.HPPer matches 40..59 run scoreboard players operation @s 9H.SkillSelect %= $6 Const
    execute if score @s 9H.HPPer matches 20..39 run scoreboard players operation @s 9H.SkillSelect %= $7 Const
    execute if score @s 9H.HPPer matches ..19 run scoreboard players operation @s 9H.SkillSelect %= $8 Const
    scoreboard players add @s 9H.SkillSelect 1

# 移動モーションに以降
    scoreboard players set @s 9H.AnimationTick 0
    scoreboard players set @s 9H.AnimationNum 61
