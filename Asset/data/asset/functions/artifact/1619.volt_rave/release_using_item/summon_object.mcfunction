#> asset:artifact/1619.volt_rave/release_using_item/summon_object
#
#
#
# @within function asset:artifact/1619.volt_rave/release_using_item/3.main

# (MaxRange - Range)*0.3を演出用Objectのscaleとする
    execute store result storage api: Argument.FieldOverride.Scale float 0.3 run scoreboard players operation $MaxRange Temporary -= $Range Temporary

# Object召喚
    data modify storage api: Argument.ID set value 1189
    execute if data storage api: Return.Effect{Stack:2} run data modify storage api: Argument.FieldOverride.IsFullCharge set value true
    execute anchored eyes positioned ^-0.4 ^-0.2 ^1.3 run function api:object/summon

