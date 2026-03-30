#> asset:mob/0456.gargo_ex_machina/tick/act/phase_2/half_beam
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/act/phase_2/

# ランダムで使用
    execute if predicate lib:random_pass_per/50 run tag @s add CO.Skill.HalfBeamSword
    execute unless entity @s[tag=CO.Skill.HalfBeamSword] run tag @s add CO.Skill.HalfBeamShot
