#> asset:mob/0410.heiloang/tick/event/tornado/attack
#
# 竜巻
#
# @within asset:mob/0410.heiloang/tick/event/tornado/

# 弾召喚
    data modify storage api: Argument.ID set value 2117
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Tornado
    function api:object/summon
