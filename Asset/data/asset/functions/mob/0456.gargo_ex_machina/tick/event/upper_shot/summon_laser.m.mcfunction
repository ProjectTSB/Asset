#> asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/summon_laser.m
#
# 射撃
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/


# 演出
    $summon area_effect_cloud ^$(posx) ^$(posy) ^$(posz) {Tags:["CO.Temp.Rotation"]}
    execute as @e[type=area_effect_cloud,tag=CO.Temp.Rotation,distance=..30,limit=1] at @s run tp @s ~ ~ ~ ~ -90
    data modify storage api: Argument.ID set value 2263
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=CO.Temp.Rotation,distance=..30,limit=1] Rotation
    data modify storage api: Argument.FieldOverride.IsShot set value true
    execute positioned as @e[type=area_effect_cloud,tag=CO.Temp.Rotation,distance=..30,limit=1] run function api:object/summon
    kill @e[type=area_effect_cloud,tag=CO.Temp.Rotation,distance=..30,limit=1]
