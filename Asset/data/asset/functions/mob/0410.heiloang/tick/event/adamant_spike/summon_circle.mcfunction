#> asset:mob/0410.heiloang/tick/event/adamant_spike/summon_circle
#
# アダマントスパイク
#
# @within asset:mob/0410.heiloang/tick/event/adamant_spike/

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 16
    execute positioned ^ ^ ^ run function api:object/summon

# 演出
    particle flash ~ ~ ~ 1 1 1 0 4
    particle firework ~ ~ ~ 1 1 1 0.3 10
