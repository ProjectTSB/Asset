#> asset:artifact/1563.thunderflash/release_using_item/iai/summon_object
#
#
#
# @within function asset:artifact/1563.thunderflash/release_using_item/iai/

# 召喚
    data modify storage api: Argument.ID set value 1167
    data modify storage api: Argument.FieldOverride.Delay set value 6
    data modify storage api: Argument.FieldOverride.Damage set value {Min:4000,Max:5000}
    execute store result storage api: Argument.FieldOverride.Range int 1 run scoreboard players get $MaxRange Temporary
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
