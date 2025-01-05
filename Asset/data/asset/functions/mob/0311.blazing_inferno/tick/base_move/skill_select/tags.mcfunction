#> asset:mob/0311.blazing_inferno/tick/base_move/skill_select/tags
#
#
#
# @within function
#   asset:mob/0311.blazing_inferno/tick/base_move/skill_select/get.m
#   asset:mob/0311.blazing_inferno/tick/base_move/skill_select/only_one_skill

# デバッグ用処理: 技を名指しで指定
# TODO: ちゃんと消すんだよ！
#    tag @s add 8N.Skill.GroundSlam
#    return fail

# 技を選択、属性ごとに違う
    execute if data storage asset:context this.Skill{Get:0} run tag @s add 8N.Skill.Fireball
    execute if data storage asset:context this.Skill{Get:1} run tag @s add 8N.Skill.FireBomb
    execute if data storage asset:context this.Skill{Get:2} run tag @s add 8N.Skill.OraOra
    execute if data storage asset:context this.Skill{Get:3} run tag @s add 8N.Skill.GroundSlam
    execute if data storage asset:context this.Skill{Get:4} run tag @s add 8N.Skill.DashPunch
