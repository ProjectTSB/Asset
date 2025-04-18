#> asset:artifact/1220.sacred_hardener/trigger/non-artifact
#
#
#
# @within function asset:artifact/1220.sacred_hardener/trigger/3.main

execute if data storage asset:context Items.offhand{id:      "minecraft:leather_helmet"} run data modify storage api: Argument.ID set value 1231
execute if data storage asset:context Items.offhand{id:  "minecraft:leather_chestplate"} run data modify storage api: Argument.ID set value 1232
execute if data storage asset:context Items.offhand{id:    "minecraft:leather_leggings"} run data modify storage api: Argument.ID set value 1233
execute if data storage asset:context Items.offhand{id:       "minecraft:leather_boots"} run data modify storage api: Argument.ID set value 1234
execute if data storage asset:context Items.offhand{id:         "minecraft:iron_helmet"} run data modify storage api: Argument.ID set value 1235
execute if data storage asset:context Items.offhand{id:     "minecraft:iron_chestplate"} run data modify storage api: Argument.ID set value 1236
execute if data storage asset:context Items.offhand{id:       "minecraft:iron_leggings"} run data modify storage api: Argument.ID set value 1237
execute if data storage asset:context Items.offhand{id:          "minecraft:iron_boots"} run data modify storage api: Argument.ID set value 1238
execute if data storage asset:context Items.offhand{id:       "minecraft:golden_helmet"} run data modify storage api: Argument.ID set value 1239
execute if data storage asset:context Items.offhand{id:   "minecraft:golden_chestplate"} run data modify storage api: Argument.ID set value 1240
execute if data storage asset:context Items.offhand{id:     "minecraft:golden_leggings"} run data modify storage api: Argument.ID set value 1241
execute if data storage asset:context Items.offhand{id:        "minecraft:golden_boots"} run data modify storage api: Argument.ID set value 1242
execute if data storage asset:context Items.offhand{id:      "minecraft:diamond_helmet"} run data modify storage api: Argument.ID set value 1243
execute if data storage asset:context Items.offhand{id:  "minecraft:diamond_chestplate"} run data modify storage api: Argument.ID set value 1244
execute if data storage asset:context Items.offhand{id:    "minecraft:diamond_leggings"} run data modify storage api: Argument.ID set value 1245
execute if data storage asset:context Items.offhand{id:       "minecraft:diamond_boots"} run data modify storage api: Argument.ID set value 1246
execute if data storage asset:context Items.offhand{id:    "minecraft:netherite_helmet"} run data modify storage api: Argument.ID set value 1247
execute if data storage asset:context Items.offhand{id:"minecraft:netherite_chestplate"} run data modify storage api: Argument.ID set value 1248
execute if data storage asset:context Items.offhand{id:  "minecraft:netherite_leggings"} run data modify storage api: Argument.ID set value 1249
execute if data storage asset:context Items.offhand{id:     "minecraft:netherite_boots"} run data modify storage api: Argument.ID set value 1250
data modify storage api: Argument.Slot set value "offhand"
function api:artifact/replace/from_id
