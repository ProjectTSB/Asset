#> asset:artifact/1661.starlight_circle/trigger/fx
#
#
#
# @within function asset:artifact/1661.starlight_circle/trigger/3.main

# 適当に演出
    particle end_rod ~ ~0.2 ~ 0 0 0 0.3 30 normal @a
    particle enchant ~ ~1.2 ~ 2 1 2 0 100 normal @a
    particle dust 0.541 0.78 1 1 ~ ~1.2 ~ 3 1.2 3 0 40 normal @a
    playsound block.beacon.power_select player @a ~ ~ ~ 1 1.8
    playsound block.beacon.power_select player @a ~ ~ ~ 1 1.9
    playsound block.enchantment_table.use player @a ~ ~ ~ 1 1.75

# 演出用Object
    data modify storage api: Argument.ID set value 2279
    data modify storage api: Argument.FieldOverride.Char set value "1"
    data modify storage api: Argument.FieldOverride.Font set value "object/2279"
    data modify storage api: Argument.FieldOverride.Color set value "#92a3ff"
    data modify storage api: Argument.FieldOverride.AppearScale set value [5f,5f,0f]
    data modify storage api: Argument.FieldOverride.Tick set value 59
    data modify storage api: Argument.FieldOverride.AppearDuration set value 12
    data modify storage api: Argument.FieldOverride.SpinDuration set value 16
    data modify storage api: Argument.FieldOverride.DisappearDuration set value 12
    execute if predicate lib:random_pass_per/50 run data modify storage api: Argument.FieldOverride.LeftRotate set value true
    execute rotated ~ 90 run function api:object/summon
