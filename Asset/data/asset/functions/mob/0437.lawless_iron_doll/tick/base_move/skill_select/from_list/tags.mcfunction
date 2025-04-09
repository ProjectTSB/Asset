#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/from_list/tags
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/from_list/get.m

# デバッグ用処理: 技を名指しで指定
# TODO: ちゃんと消すんだよ！
#    tag @s add C5.Skill.HorizontalSlashShot
#    return fail

# 技を選択
    execute if data storage asset:context this.Skill{Get:0} run tag @s add C5.Skill.Charge
    execute if data storage asset:context this.Skill{Get:1} run tag @s add C5.Skill.ChaserShot
    execute if data storage asset:context this.Skill{Get:2} run tag @s add C5.Skill.LingeringLaser
    execute if data storage asset:context this.Skill{Get:3} run tag @s add C5.Skill.VerticalSlashShot
# 一部難易度では使用に条件が入るもの
    execute if data storage asset:context this.Skill{Get:4} run tag @s add C5.Skill.HorizontalSlashShot
    execute if data storage asset:context this.Skill{Get:5} run tag @s add C5.Skill.ShockWave
