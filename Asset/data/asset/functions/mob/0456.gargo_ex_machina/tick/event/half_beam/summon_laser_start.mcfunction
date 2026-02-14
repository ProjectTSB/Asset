#> asset:mob/0456.gargo_ex_machina/tick/event/half_beam/summon_laser_start
#
# 半面焼きビーム
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/half_beam/event_attack

# 基準用AEC召喚
    summon area_effect_cloud ~ ~ ~ {Tags:["CO.Aec.Target"]}
    execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] run tag @e[type=area_effect_cloud,tag=CO.Aec.Target,distance=..10,limit=1] add CO.Skill.HalfBeam.IsRight

# 演出
    execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] run tp @e[type=area_effect_cloud,tag=CO.Aec.Target,distance=..10,limit=1] ^-2 ^ ^ ~-30 60
    execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] run tp @e[type=area_effect_cloud,tag=CO.Aec.Target,distance=..10,limit=1] ^2 ^ ^ ~30 60
    execute as @e[type=area_effect_cloud,tag=CO.Aec.Target,distance=..10,limit=1] at @s positioned ^-2 ^ ^ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/summon_laser
    execute as @e[type=area_effect_cloud,tag=CO.Aec.Target,distance=..10,limit=1] at @s positioned ^2 ^ ^ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/summon_laser
    execute as @e[type=area_effect_cloud,tag=CO.Aec.Target,distance=..10,limit=1] at @s run tp @s ~ ~ ~ ~ 45
    execute as @e[type=area_effect_cloud,tag=CO.Aec.Target,distance=..10,limit=1] at @s positioned ^-2 ^ ^ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/summon_laser
    execute as @e[type=area_effect_cloud,tag=CO.Aec.Target,distance=..10,limit=1] at @s positioned ^2 ^ ^ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/summon_laser
    execute as @e[type=area_effect_cloud,tag=CO.Aec.Target,distance=..10,limit=1] at @s run tp @s ~ ~ ~ ~ 30
    execute as @e[type=area_effect_cloud,tag=CO.Aec.Target,distance=..10,limit=1] at @s positioned ^-2 ^ ^ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/summon_laser
    execute as @e[type=area_effect_cloud,tag=CO.Aec.Target,distance=..10,limit=1] at @s positioned ^2 ^ ^ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/summon_laser

# 終了
    kill @e[type=area_effect_cloud,tag=CO.Aec.Target,distance=..10,limit=1]
