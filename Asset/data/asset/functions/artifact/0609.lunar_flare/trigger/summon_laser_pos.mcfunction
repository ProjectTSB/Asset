#> asset:artifact/0609.lunar_flare/trigger/summon_laser_pos
#
#
#
# @within function asset:artifact/0609.lunar_flare/trigger/find_target_entity

# タグ付与
    tag @s add GX.RecursiveEnd

# Object召喚
    data modify storage api: Argument.ID set value 1013
    data modify storage api: Argument.FieldOverride.Damage set value {Min:75,Max:95}
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
