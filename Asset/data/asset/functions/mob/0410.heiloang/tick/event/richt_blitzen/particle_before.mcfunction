#> asset:mob/0410.heiloang/tick/event/richt_blitzen/particle_before
#
# リヒトブリッツェン
#
# @within asset:mob/0410.heiloang/tick/event/richt_blitzen/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/hard

# 演出
    particle dust 1 0.808 0.282 3 ^18 ^2 ^25 0.6 0.6 0.6 0.1 1 force
    particle dust 1 0.808 0.282 3 ^6 ^2 ^25 0.6 0.6 0.6 0.1 1 force
    particle dust 1 0.808 0.282 3 ^-6 ^2 ^25 0.6 0.6 0.6 0.1 1 force
    particle dust 1 0.808 0.282 3 ^-18 ^2 ^25 0.6 0.6 0.6 0.1 1 force

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 100
    execute positioned ^18 ^2 ^25 run function api:object/summon
# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 100
    execute positioned ^6 ^2 ^25 run function api:object/summon
# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 100
    execute positioned ^-6 ^2 ^25 run function api:object/summon
# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 100
    execute positioned ^-18 ^2 ^25 run function api:object/summon
