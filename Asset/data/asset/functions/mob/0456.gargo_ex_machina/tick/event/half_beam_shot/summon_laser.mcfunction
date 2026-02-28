#> asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/summon_laser
#
# 半面焼きビーム
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/summon_laser_start

# 演出
    data modify storage api: Argument.ID set value 2263
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] run data modify storage api: Argument.FieldOverride.IsRight set value true
    function api:object/summon
