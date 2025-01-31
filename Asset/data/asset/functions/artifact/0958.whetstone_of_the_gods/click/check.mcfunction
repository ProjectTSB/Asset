#> asset:artifact/0958.whetstone_of_the_gods/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/958/click/check

# 手持ちを確認する
    function api:data_get/selected_item
# 剣/斧を持っていることを判定する
    execute unless predicate asset:artifact/0958.whetstone_of_the_gods/has_weapon run tellraw @s [{"text":"剣と斧以外を砥ぐことは出来ないようだ..."}]
    execute unless predicate asset:artifact/0958.whetstone_of_the_gods/has_weapon run tag @s remove CanUsed
# 既に研がれていないことを判定する
    execute if entity @s[tag=CanUsed] if data storage api: SelectedItem.tag.Sharpened run tellraw @s [{"text":"既にこの武器は研がれているようだ..."}]
    execute if entity @s[tag=CanUsed] if data storage api: SelectedItem.tag.Sharpened run tag @s remove CanUsed
# 神器ではないことを判定する
    execute if entity @s[tag=CanUsed] if data storage api: SelectedItem.tag.TSB.ID run tellraw @s [{"text":"神器を砥ぐことは出来ないようだ..."}]
    execute if entity @s[tag=CanUsed] if data storage api: SelectedItem.tag.TSB.ID run tag @s remove CanUsed
# 耐久が減っていないことを判定する
    execute if entity @s[tag=CanUsed] unless data storage api: SelectedItem.tag{Damage:0} run tellraw @s [{"text":"既に切れ味が落ちている武器は砥げないようだ..."}]
    execute if entity @s[tag=CanUsed] unless data storage api: SelectedItem.tag{Damage:0} run tag @s remove CanUsed
# 剣/斧に応じた島攻略割合が出来ているか判定する
#   execute if entity @s[tag=CanUsed] if data storage api: SelectedItem{id:   "minecraft:wooden_sword"} run function asset:artifact/0958.whetstone_of_the_gods/click/check_progress.m {RequiredPercentage:00}
    execute if entity @s[tag=CanUsed] if data storage api: SelectedItem{id:    "minecraft:stone_sword"} run function asset:artifact/0958.whetstone_of_the_gods/click/check_progress.m {RequiredPercentage:10}
    execute if entity @s[tag=CanUsed] if data storage api: SelectedItem{id:     "minecraft:iron_sword"} run function asset:artifact/0958.whetstone_of_the_gods/click/check_progress.m {RequiredPercentage:35}
    execute if entity @s[tag=CanUsed] if data storage api: SelectedItem{id:   "minecraft:golden_sword"} run function asset:artifact/0958.whetstone_of_the_gods/click/check_progress.m {RequiredPercentage:60}
    execute if entity @s[tag=CanUsed] if data storage api: SelectedItem{id:  "minecraft:diamond_sword"} run function asset:artifact/0958.whetstone_of_the_gods/click/check_progress.m {RequiredPercentage:85}
    execute if entity @s[tag=CanUsed] if data storage api: SelectedItem{id:"minecraft:netherite_sword"} run function asset:artifact/0958.whetstone_of_the_gods/click/check_progress.m {RequiredPercentage:85}
#   execute if entity @s[tag=CanUsed] if data storage api: SelectedItem{id:     "minecraft:wooden_axe"} run function asset:artifact/0958.whetstone_of_the_gods/click/check_progress.m {RequiredPercentage:00}
    execute if entity @s[tag=CanUsed] if data storage api: SelectedItem{id:      "minecraft:stone_axe"} run function asset:artifact/0958.whetstone_of_the_gods/click/check_progress.m {RequiredPercentage:10}
    execute if entity @s[tag=CanUsed] if data storage api: SelectedItem{id:       "minecraft:iron_axe"} run function asset:artifact/0958.whetstone_of_the_gods/click/check_progress.m {RequiredPercentage:35}
    execute if entity @s[tag=CanUsed] if data storage api: SelectedItem{id:     "minecraft:golden_axe"} run function asset:artifact/0958.whetstone_of_the_gods/click/check_progress.m {RequiredPercentage:60}
    execute if entity @s[tag=CanUsed] if data storage api: SelectedItem{id:    "minecraft:diamond_axe"} run function asset:artifact/0958.whetstone_of_the_gods/click/check_progress.m {RequiredPercentage:85}
    execute if entity @s[tag=CanUsed] if data storage api: SelectedItem{id:  "minecraft:netherite_axe"} run function asset:artifact/0958.whetstone_of_the_gods/click/check_progress.m {RequiredPercentage:85}
