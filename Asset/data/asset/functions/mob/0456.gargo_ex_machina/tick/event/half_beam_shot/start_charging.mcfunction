#> asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/start_charging
#
# 半面焼きビーム + 回転斬り
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/event_start

# タグ更新
    scoreboard players set @s CO.EventTimer 0
    tag @s remove CO.Skill.HalfBeamShot
    tag @s add CO.Skill.HalfBeamShot.Charge
