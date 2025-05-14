#> asset:mob/0327.eclael/tick/app.1_3.select_skill_latter
#
# 使用するスキルを決定する・後半戦
#
# @within function asset:mob/0327.eclael/tick/app.1_1.select_skill

# カウント増加
    scoreboard players add @s 93.ActionCount 1

# カウントリセット
    execute if score @s 93.ActionCount matches 29.. run scoreboard players set @s 93.ActionCount 1

## 位置リセット
# 雷斗星刃・当流
    execute if score @s 93.ActionCount matches ..1 run tag @s add 93.Skill.FieldSlash
# 待機
    execute if score @s 93.ActionCount matches 2..3 run tag @s add 93.Skill.Latter.Idle
# 天泣
    execute if score @s 93.ActionCount matches 4 run tag @s add 93.Skill.Fall
# 移動斬り
    execute if score @s 93.ActionCount matches 5 run tag @s add 93.Skill.MoveSlash
## 位置リセット
# 点睛
    execute if score @s 93.ActionCount matches 6 run tag @s add 93.Skill.Tensei
# 待機
    execute if score @s 93.ActionCount matches 7 run tag @s add 93.Skill.Latter.Idle
# 雷斗星刃・至円
    execute if score @s 93.ActionCount matches 8 run tag @s add 93.Skill.Circle
# 残心・居合
    execute if score @s 93.ActionCount matches 9 run tag @s add 93.Skill.Beam
# 移動斬り
    execute if score @s 93.ActionCount matches 10 run tag @s add 93.Skill.MoveSlash
# 待機
    execute if score @s 93.ActionCount matches 11 run tag @s add 93.Skill.Latter.Idle
## 位置リセット
# 曲射
    execute if score @s 93.ActionCount matches 12 run tag @s add 93.Skill.UpperShot
# 待機
    execute if score @s 93.ActionCount matches 13..14 run tag @s add 93.Skill.Latter.Idle

## 仕切り直し
# 全体落雷
    execute if score @s 93.ActionCount matches 15 run tag @s add 93.Skill.FieldThunder
# 待機
    execute if score @s 93.ActionCount matches 16 run tag @s add 93.Skill.Latter.Idle
# 天泣
    execute if score @s 93.ActionCount matches 17 run tag @s add 93.Skill.Fall
# 待機
    execute if score @s 93.ActionCount matches 18 run tag @s add 93.Skill.Latter.Idle
# 移動斬り
    execute if score @s 93.ActionCount matches 19 run tag @s add 93.Skill.MoveSlash
## 位置リセット
# 点睛
    execute if score @s 93.ActionCount matches 20 run tag @s add 93.Skill.Tensei
# 待機
    execute if score @s 93.ActionCount matches 21 run tag @s add 93.Skill.Latter.Idle
# 雷斗星刃・至円
    execute if score @s 93.ActionCount matches 22 run tag @s add 93.Skill.Circle
# 残心・居合
    execute if score @s 93.ActionCount matches 23 run tag @s add 93.Skill.Beam
# 移動斬り
    execute if score @s 93.ActionCount matches 24 run tag @s add 93.Skill.MoveSlash
# 待機
    execute if score @s 93.ActionCount matches 25 run tag @s add 93.Skill.Latter.Idle
## 位置リセット
# 曲射
    execute if score @s 93.ActionCount matches 26 run tag @s add 93.Skill.UpperShot
# 待機
    execute if score @s 93.ActionCount matches 27..28 run tag @s add 93.Skill.Latter.Idle
# 移動斬り
    execute if score @s 93.ActionCount matches 29 run tag @s add 93.Skill.MoveSlash
# 天泣
    execute if score @s 93.ActionCount matches 30 run tag @s add 93.Skill.Fall
# 待機
    execute if score @s 93.ActionCount matches 31 run tag @s add 93.Skill.Latter.Idle

# # ノーマル
#     execute if predicate api:global_vars/difficulty/max/normal run function asset:mob/0327.eclael/tick/app.1_6.select_skill_latter_normal
# # ハード・前半
#     execute if entity @s[tag=!93.Phase.HardLatter] if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0327.eclael/tick/app.1_11.select_skill_latter_hard_former
# # ハード・後半
#     execute if entity @s[tag=93.Phase.HardLatter] if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0327.eclael/tick/app.1_12.select_skill_latter_hard_latter
