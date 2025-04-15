#> asset:artifact/1208.secret_art_waterfall/trigger/summon_object
#
#
#
# @within function asset:artifact/1208.secret_art_waterfall/trigger/recursive

# 召喚済みかチェック
    tag @s add Check

# 召喚
    data modify storage api: Argument.ID set value 1108
    data modify storage api: Argument.FieldOverride.Damage set value 70
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute positioned ~ ~0.1 ~ run function api:object/summon
