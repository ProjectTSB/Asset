#> asset:artifact/1257.thor_staff/trigger/summon_object
#
#
#
# @within function asset:artifact/1257.thor_staff/trigger/recursive

# 召喚済みかチェック
    tag @s add Check

# 召喚
    data modify storage api: Argument.ID set value 1135
    data modify storage api: Argument.FieldOverride.Damage set value {Min:300,Max:400}
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute positioned ~ ~0.1 ~ run function api:object/summon
