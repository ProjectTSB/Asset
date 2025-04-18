#> asset:mob/0410.heiloang/tick/event/enhanced_disaster/attack_fire
#
# エンハンスドディザスター
#
# @within asset:mob/0410.heiloang/tick/event/enhanced_disaster/attack

# 弾召喚
    data modify storage api: Argument.ID set value 2114
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Ehd
    data modify storage api: Argument.FieldOverride.Count set value 1
    function api:object/summon

# 演出
    particle flash ~ ~ ~ 1 1 1 0 4 force
