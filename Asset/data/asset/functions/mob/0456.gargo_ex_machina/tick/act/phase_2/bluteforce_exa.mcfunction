#> asset:mob/0456.gargo_ex_machina/tick/act/phase_2/bluteforce_exa
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/act/phase_2/

# ランダムで使用
    execute if predicate lib:random_pass_per/50 run tag @s add CO.Skill.BluteForce.Pt.Exa
    execute unless entity @s[tag=CO.Skill.BluteForce.Pt.Exa] run tag @s add CO.Skill.BluteForce.Pt.ExaInv
