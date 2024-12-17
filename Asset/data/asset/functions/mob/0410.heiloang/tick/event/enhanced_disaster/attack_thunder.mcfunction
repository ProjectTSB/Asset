#> asset:mob/0410.heiloang/tick/event/enhanced_disaster/attack_thunder
#
# エンハンスドディザスター
#
# @within asset:mob/0410.heiloang/tick/event/enhanced_disaster/attack

# 弾召喚
    data modify storage api: Argument.ID set value 2116
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 50.0f
    execute store result storage api: Argument.FieldOverride.Count int 1 run scoreboard players get @s BE.Ehd.Thunder
    function api:object/summon

# 演出
    particle flash ~ ~ ~ 1 1 1 0 4 force
