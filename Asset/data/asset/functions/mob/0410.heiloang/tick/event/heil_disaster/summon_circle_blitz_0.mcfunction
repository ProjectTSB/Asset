#> asset:mob/0410.heiloang/tick/event/heil_disaster/summon_circle_blitz_0
#
# ヘイルディザスター
#
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/hard

# 角度変更
    execute positioned as @s facing entity @e[type=marker,tag=BE.CenterPosition,limit=1] feet run tp @s ~ ~ ~ ~ 0

# 演出
    particle flash ^18 ^2 ^-25 0.6 0.6 0.6 0.1 1 force
    particle flash ^6 ^2 ^-25 0.6 0.6 0.6 0.1 1 force
    particle flash ^-6 ^2 ^-25 0.6 0.6 0.6 0.1 1 force
    particle flash ^-18 ^2 ^-25 0.6 0.6 0.6 0.1 1 force

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 75
    execute rotated as @s positioned ^18 ^2 ^-25 run function api:object/summon
# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 75
    execute rotated as @s positioned ^6 ^2 ^-25 run function api:object/summon
# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 75
    execute rotated as @s positioned ^-6 ^2 ^-25 run function api:object/summon
# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 75
    execute rotated as @s positioned ^-18 ^2 ^-25 run function api:object/summon

# 角度戻す
    execute positioned as @s run tp @s ~ ~ ~ ~ ~
