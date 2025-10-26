#> asset:artifact/1311.yearning_rose/damage_from_entity/object
#
#
#
# @within function asset:artifact/1311.yearning_rose/damage_from_entity/3.main

# MobUUIDを
    data modify storage api: Argument.ID set value 1152
    execute store result storage api: Argument.FieldOverride.TargetMobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon
