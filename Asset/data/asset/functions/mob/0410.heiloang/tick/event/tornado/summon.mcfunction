#> asset:mob/0410.heiloang/tick/event/tornado/summon
#
# アダマントスパイク
#
# @within asset:mob/0410.heiloang/tick/event/tornado/

# 弾召喚
    data modify storage api: Argument.ID set value 2117
    # data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 30.0f
    function api:object/summon
