#> asset:artifact/1492.your_thoughts_frames/trigger/summon
#
# オーブの召喚
#
# @within function asset:artifact/1492.your_thoughts_frames/trigger/3.main

# 演出
    particle item pink_stained_glass ~ ~1 ~ 0.3 0.5 0.3 0.1 100 normal @a

# 召喚
    data modify storage api: Argument.ID set value 1164
    data modify storage api: Argument.FieldOverride.Amount set value 0.05d
    data modify storage api: Argument.FieldOverride.Duration set value 200
    data modify storage api: Argument.FieldOverride.Heal set value 5.0d
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute positioned ~ ~1 ~ run function api:object/summon
