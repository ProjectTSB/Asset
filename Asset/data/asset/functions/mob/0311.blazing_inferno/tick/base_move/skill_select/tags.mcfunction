#> asset:mob/0311.blazing_inferno/tick/base_move/skill_select/tags
#
#
#
# @within function
#   asset:mob/0311.blazing_inferno/tick/base_move/skill_select/get.m
#   asset:mob/0311.blazing_inferno/tick/base_move/skill_select/only_one_skill

# デバッグ用処理: 技を名指しで指定
# TODO: ちゃんと消すんだよ！
#    tag @s add RW.Skill.LightningStab
#    return fail

# 技を選択、属性ごとに違う
    execute if data storage asset:context this.Skill{Get:0} run say 1
    execute if data storage asset:context this.Skill{Get:1} run say 2
    execute if data storage asset:context this.Skill{Get:2} run say 3
