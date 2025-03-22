#> asset:mob/0410.heiloang/tick/event/final_flare/attack
#
# 究極幻想
#
# @within asset:mob/0410.heiloang/tick/event/final_flare/

# 弾召喚
    data modify storage api: Argument.ID set value 2187
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 60.0f
    execute positioned ^ ^23 ^-10 run function api:object/summon
