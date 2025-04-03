#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/select/tags
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/select/get.m

# デバッグ用処理: 技を名指しで指定
# TODO: ちゃんと消すんだよ！
    tag @s add C5.Skill.HorizontalSlashShot
    return fail

# 技を選択
#    execute if data storage asset:context this.Skill{Get:0} run tag @s add C5.Skill.ChargeSlash
#    execute if data storage asset:context this.Skill{Get:1} run tag @s add C5.Skill.FrontDashSlash
#    execute if data storage asset:context this.Skill{Get:2} run tag @s add C5.Skill.SideDashShot
#    execute if data storage asset:context this.Skill{Get:3} run tag @s add C5.Skill.HoloBlock
#    execute if data storage asset:context this.Skill{Get:4} run tag @s add C5.Skill.RandomTeleportSlash
#    execute if data storage asset:context this.Skill{Get:5} run tag @s add C5.Skill.CordinateLaser
