#> asset:artifact/0958.whetstone_of_the_gods/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/958/click/

    item replace entity @s weapon.mainhand with air
    execute if data storage asset:context Items.mainhand{id:   "minecraft:wooden_sword"} run data modify storage api: Argument.ID set value 1011
    execute if data storage asset:context Items.mainhand{id:    "minecraft:stone_sword"} run data modify storage api: Argument.ID set value 1012
    execute if data storage asset:context Items.mainhand{id:     "minecraft:iron_sword"} run data modify storage api: Argument.ID set value 1013
    execute if data storage asset:context Items.mainhand{id:   "minecraft:golden_sword"} run data modify storage api: Argument.ID set value 1014
    execute if data storage asset:context Items.mainhand{id:  "minecraft:diamond_sword"} run data modify storage api: Argument.ID set value 1015
    execute if data storage asset:context Items.mainhand{id:"minecraft:netherite_sword"} run data modify storage api: Argument.ID set value 1016
    execute if data storage asset:context Items.mainhand{id:     "minecraft:wooden_axe"} run data modify storage api: Argument.ID set value 1211
    execute if data storage asset:context Items.mainhand{id:      "minecraft:stone_axe"} run data modify storage api: Argument.ID set value 1212
    execute if data storage asset:context Items.mainhand{id:       "minecraft:iron_axe"} run data modify storage api: Argument.ID set value 1213
    execute if data storage asset:context Items.mainhand{id:     "minecraft:golden_axe"} run data modify storage api: Argument.ID set value 1214
    execute if data storage asset:context Items.mainhand{id:    "minecraft:diamond_axe"} run data modify storage api: Argument.ID set value 1215
    execute if data storage asset:context Items.mainhand{id:  "minecraft:netherite_axe"} run data modify storage api: Argument.ID set value 1216
    function api:artifact/give/from_id
