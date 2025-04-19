#> asset:mob/0410.heiloang/tick/event/enhanced_disaster/summon_circle_fire.m
#
# エンハンスドディザスター
#
# @within asset:mob/0410.heiloang/tick/event/enhanced_disaster/summon_circle.m

# パーティクル表示用AEC召喚
    execute positioned ^ ^ ^18 run summon area_effect_cloud ~ ~ ~ {Duration:300,Tags:["BE.Temp.EhdPosition","BE.Temp.EhdPosition.Fire"]}

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=BE.Temp.AttackRotation,limit=1] Rotation
    data modify storage api: Argument.FieldOverride.Color set value 10684938
    $data modify storage api: Argument.FieldOverride.RemoveTimer set value $(Tick)
    execute positioned ^ ^ ^18 run function api:object/summon
