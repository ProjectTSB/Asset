#> asset:mob/0365.frestchika/tick/base_move/skill/select/tags
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/select/get.m

# デバッグ用処理: 技を名指しで指定
# TODO: ちゃんと消すんだよ！
    tag @s add A5.Skill.SideDashShot
    return fail

# 技を選択
    execute if data storage asset:context this.Skill{Get:0} run tag @s add A5.Skill.BackDashBomb
    execute if data storage asset:context this.Skill{Get:1} run tag @s add A5.Skill.FrontDashSlash
    execute if data storage asset:context this.Skill{Get:2} run tag @s add A5.Skill.BackDashBomb
