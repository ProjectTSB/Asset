#> asset:mob/0410.heiloang/tick/event/enhanced_disaster/summon_circle
#
# エンハンスドディザスター
#
# @within asset:mob/0410.heiloang/tick/event/enhanced_disaster/

# 角度決定用
    summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["BE.Temp.AttackRotation"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackRotation,limit=1] at @s run tp @s ~ ~ ~ ~ -90

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=BE.Temp.AttackRotation,limit=1] Rotation
    data modify storage api: Argument.FieldOverride.Color set value 10684938
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 80
    execute positioned ^ ^ ^18 run function api:object/summon

    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=BE.Temp.AttackRotation,limit=1] Rotation
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 80
    execute rotated ~120 ~ positioned ^ ^ ^18 run function api:object/summon

    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=BE.Temp.AttackRotation,limit=1] Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 80
    execute rotated ~240 ~ positioned ^ ^ ^18 run function api:object/summon
