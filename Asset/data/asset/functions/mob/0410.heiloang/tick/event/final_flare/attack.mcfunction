#> asset:mob/0410.heiloang/tick/event/final_flare/attack
#
# 究極幻想
#
# @within asset:mob/0410.heiloang/tick/event/final_flare/

# 弾召喚
    data modify storage api: Argument.ID set value 2187
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute positioned ^ ^21 ^-10 run function api:object/summon
