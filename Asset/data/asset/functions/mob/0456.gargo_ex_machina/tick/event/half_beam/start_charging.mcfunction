#> asset:mob/0456.gargo_ex_machina/tick/event/half_beam/start_charging
#
# 半面焼きビーム
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/half_beam/event_start

# タグ更新
    scoreboard players set @s CO.EventTimer 0
    tag @s remove CO.Skill.HalfBeam
    tag @s add CO.Skill.HalfBeam.Charge
