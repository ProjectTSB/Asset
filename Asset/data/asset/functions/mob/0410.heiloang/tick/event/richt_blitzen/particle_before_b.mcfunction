#> asset:mob/0410.heiloang/tick/event/richt_blitzen/particle_before_b
#
# リヒトブリッツェン
#
# @within asset:mob/0410.heiloang/tick/event/richt_blitzen/attack_pattern_b

# 演出
    particle flash ^12 ^2 ^25 0.6 0.6 0.6 0.1 1 force
    particle flash ^ ^2 ^25 0.6 0.6 0.6 0.1 1 force
    particle flash ^-12 ^2 ^25 0.6 0.6 0.6 0.1 1 force

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 120
    execute positioned ^12 ^2 ^25 run function api:object/summon
# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 120
    execute positioned ^ ^2 ^25 run function api:object/summon
# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 120
    execute positioned ^-12 ^2 ^25 run function api:object/summon
