#> asset:artifact/0355.barrel/click/summon_barrel
#
# 樽を召喚する
#
# @within function asset:artifact/0355.barrel/click/

# 召喚
    data modify storage api: Argument.ID set value 1081
    data modify storage api: Argument.FieldOverride.Damage set value 75.0f
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute positioned ~ ~3.6 ~ run function api:object/summon
