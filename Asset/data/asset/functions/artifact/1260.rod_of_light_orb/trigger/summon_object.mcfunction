#> asset:artifact/1260.rod_of_light_orb/trigger/summon_object
#
#
#
# @within function asset:artifact/1260.rod_of_light_orb/trigger/recursive

# 召喚済みかチェック
    tag @s add Check

# 召喚
    data modify storage api: Argument.ID set value 1137
    data modify storage api: Argument.FieldOverride.Damage set value 70
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute positioned ~ ~0.3 ~ run function api:object/summon
