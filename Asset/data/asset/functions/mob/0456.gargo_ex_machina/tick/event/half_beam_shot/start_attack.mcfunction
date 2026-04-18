#> asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/start_attack
#
# 半面焼きビーム
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/event_charging

# タグ更新
    scoreboard players set @s CO.EventTimer 0
    tag @s remove CO.Skill.HalfBeamShot.Charge
    tag @s add CO.Skill.HalfBeamShot.Attack
