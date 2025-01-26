#> asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_circle_1
#
# リヒトブリッツェン
#
# @within asset:mob/0410.heiloang/tick/event/richt_blitzen/attack_pattern_a
# @within asset:mob/0410.heiloang/tick/event/richt_blitzen/attack_pattern_b
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/hard

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 60
    execute positioned ^12 ^2 ^25 run function api:object/summon
# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 60
    execute positioned ^ ^2 ^25 run function api:object/summon
# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 60
    execute positioned ^-12 ^2 ^25 run function api:object/summon
