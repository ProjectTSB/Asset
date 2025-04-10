#> asset:artifact/1270.raging_passion_pickaxe/trigger/summon_object
#
#
#
# @within function asset:artifact/1270.raging_passion_pickaxe/trigger/3.main

# Object召喚
    data modify storage api: Argument.ID set value 1142
    data modify storage api: Argument.FieldOverride.Damage set value 20
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
