#> asset:artifact/0908.spear_of_butterfly/trigger/summon_object
#
#
#
# @within function asset:artifact/0908.spear_of_butterfly/trigger/3.main

# debug
    # scoreboard players set @s P8.AttackCount 5

# 5段目に限りDamageとUserIDを入れておく
    execute if score @s P8.AttackCount matches 5 store result storage api: Argument.FieldOverride.Damage int 1 run scoreboard players get $P8.Damage Temporary
    execute if score @s P8.AttackCount matches 5 store result storage api: Argument.FieldOverride.AdditionalMPHeal int 1 run data get storage api: PersistentArgument.AdditionalMPHeal
    execute if score @s P8.AttackCount matches 5 store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID

# AttackCountをFieldOverrideに入れて演出用Object召喚
    data modify storage api: Argument.ID set value 1114
    execute store result storage api: Argument.FieldOverride.Count int 1 run scoreboard players get @s P8.AttackCount
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon
