#> asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect_start
#
# 剣叩きつけ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/half_beam/event_attack

# 演出
    execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] rotated ~60 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect
    execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] rotated ~120 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect
    execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] rotated ~-60 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect
    execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] rotated ~-120 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect
