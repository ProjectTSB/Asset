#> asset:mob/0410.heiloang/tick/event/enhanced_disaster/summon_circle_thunder.m
#
# エンハンスドディザスター
#
# @within asset:mob/0410.heiloang/tick/event/enhanced_disaster/summon_circle.m

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=BE.Temp.AttackRotation,limit=1] Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    $data modify storage api: Argument.FieldOverride.RemoveTimer set value $(Tick)
    execute rotated ~240 ~ positioned ^ ^ ^18 run function api:object/summon
