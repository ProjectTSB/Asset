#> asset:mob/0301.karmic/tick/skill_select
#
#
#
# @within function asset:mob/0301.karmic/tick/


# スキルを+1する
    scoreboard players add @s 8D.Skill 1

# スキルが超えたら戻す
    execute if score @s 8D.Skill matches 7.. run scoreboard players set @s 8D.Skill 1
# 難易度が足りないとスキルが減る
    execute if predicate api:global_vars/difficulty/1_normal if score @s 8D.Skill matches 6.. run scoreboard players set @s 8D.Skill 1

# スキル選択
    execute if score @s 8D.Skill matches 1 run tag @s add 8D.SkillDash
    execute if score @s 8D.Skill matches 2 run tag @s add 8D.SkillSlash
    execute if score @s 8D.Skill matches 3 run tag @s add 8D.SkillDash
    execute if score @s 8D.Skill matches 4 run tag @s add 8D.SkillGun
    execute if score @s 8D.Skill matches 5 run tag @s add 8D.SkillDash
    execute if score @s 8D.Skill matches 6 run tag @s add 8D.SkillSwordCange
