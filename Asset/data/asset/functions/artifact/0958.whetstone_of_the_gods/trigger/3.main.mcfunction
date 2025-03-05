#> asset:artifact/0958.whetstone_of_the_gods/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0958.whetstone_of_the_gods/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
    item replace entity @s weapon.offhand with air
    execute if data storage asset:context Items.offhand{id:   "minecraft:wooden_sword"} run data modify storage api: Argument.ID set value 1011
    execute if data storage asset:context Items.offhand{id:    "minecraft:stone_sword"} run data modify storage api: Argument.ID set value 1012
    execute if data storage asset:context Items.offhand{id:     "minecraft:iron_sword"} run data modify storage api: Argument.ID set value 1013
    execute if data storage asset:context Items.offhand{id:   "minecraft:golden_sword"} run data modify storage api: Argument.ID set value 1014
    execute if data storage asset:context Items.offhand{id:  "minecraft:diamond_sword"} run data modify storage api: Argument.ID set value 1015
    execute if data storage asset:context Items.offhand{id:"minecraft:netherite_sword"} run data modify storage api: Argument.ID set value 1016
    execute if data storage asset:context Items.offhand{id:     "minecraft:wooden_axe"} run data modify storage api: Argument.ID set value 1211
    execute if data storage asset:context Items.offhand{id:      "minecraft:stone_axe"} run data modify storage api: Argument.ID set value 1212
    execute if data storage asset:context Items.offhand{id:       "minecraft:iron_axe"} run data modify storage api: Argument.ID set value 1213
    execute if data storage asset:context Items.offhand{id:     "minecraft:golden_axe"} run data modify storage api: Argument.ID set value 1214
    execute if data storage asset:context Items.offhand{id:    "minecraft:diamond_axe"} run data modify storage api: Argument.ID set value 1215
    execute if data storage asset:context Items.offhand{id:  "minecraft:netherite_axe"} run data modify storage api: Argument.ID set value 1216
    data modify storage api: Argument.Slot set value "offhand"
    function api:artifact/replace/from_id
