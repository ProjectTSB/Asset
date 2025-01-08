#> asset:mob/1004.tultaria/tick/base_move/skill_select/start_with_sword
#
# 特定の攻撃で開始する
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_select/roll.m

tag @s add RW.Skill.SwordRain
tag @s add RW.SkillSelected
data remove storage asset:context this.Skill.List[2]
