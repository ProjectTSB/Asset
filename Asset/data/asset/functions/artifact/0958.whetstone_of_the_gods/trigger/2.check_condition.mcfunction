#> asset:artifact/0958.whetstone_of_the_gods/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0958.whetstone_of_the_gods/trigger/1.trigger


# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く
# 剣/斧を持っていることを判定する
    execute unless predicate asset:artifact/0958.whetstone_of_the_gods/has_weapon run tellraw @s [{"text":"剣と斧以外を砥ぐことは出来ないようだ..."}]
    execute unless predicate asset:artifact/0958.whetstone_of_the_gods/has_weapon run tag @s remove CanUsed
# 神器ではないことを判定する
    execute if entity @s[tag=CanUsed] unless data storage asset:context id{offhand:-2} run tellraw @s [{"text":"神器を砥ぐことは出来ないようだ..."}]
    execute if entity @s[tag=CanUsed] unless data storage asset:context id{offhand:-2} run tag @s remove CanUsed
# 既に研がれていないことを判定する
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.offhand.tag.Sharpened run tellraw @s [{"text":"既にこの武器は研がれているようだ..."}]
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.offhand.tag.Sharpened run tag @s remove CanUsed
# 耐久が減っていないことを判定する
    execute if entity @s[tag=CanUsed] unless data storage asset:context Items.offhand.tag{Damage:0} run tellraw @s [{"text":"既に切れ味が落ちている武器は砥げないようだ..."}]
    execute if entity @s[tag=CanUsed] unless data storage asset:context Items.offhand.tag{Damage:0} run tag @s remove CanUsed
# 剣/斧に応じた島攻略割合が出来ているか判定する
#   execute if entity @s[tag=CanUsed] if data storage asset:context Items.offhand{id:   "minecraft:wooden_sword"} run function asset:artifact/0958.whetstone_of_the_gods/trigger/check_progress.m {RequiredPercentage:00}
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.offhand{id:    "minecraft:stone_sword"} run function asset:artifact/0958.whetstone_of_the_gods/trigger/check_progress.m {RequiredPercentage:10}
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.offhand{id:     "minecraft:iron_sword"} run function asset:artifact/0958.whetstone_of_the_gods/trigger/check_progress.m {RequiredPercentage:35}
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.offhand{id:   "minecraft:golden_sword"} run function asset:artifact/0958.whetstone_of_the_gods/trigger/check_progress.m {RequiredPercentage:60}
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.offhand{id:  "minecraft:diamond_sword"} run function asset:artifact/0958.whetstone_of_the_gods/trigger/check_progress.m {RequiredPercentage:85}
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.offhand{id:"minecraft:netherite_sword"} run function asset:artifact/0958.whetstone_of_the_gods/trigger/check_progress.m {RequiredPercentage:85}
#   execute if entity @s[tag=CanUsed] if data storage asset:context Items.offhand{id:     "minecraft:wooden_axe"} run function asset:artifact/0958.whetstone_of_the_gods/trigger/check_progress.m {RequiredPercentage:00}
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.offhand{id:      "minecraft:stone_axe"} run function asset:artifact/0958.whetstone_of_the_gods/trigger/check_progress.m {RequiredPercentage:10}
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.offhand{id:       "minecraft:iron_axe"} run function asset:artifact/0958.whetstone_of_the_gods/trigger/check_progress.m {RequiredPercentage:35}
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.offhand{id:     "minecraft:golden_axe"} run function asset:artifact/0958.whetstone_of_the_gods/trigger/check_progress.m {RequiredPercentage:60}
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.offhand{id:    "minecraft:diamond_axe"} run function asset:artifact/0958.whetstone_of_the_gods/trigger/check_progress.m {RequiredPercentage:85}
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.offhand{id:  "minecraft:netherite_axe"} run function asset:artifact/0958.whetstone_of_the_gods/trigger/check_progress.m {RequiredPercentage:85}

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0958.whetstone_of_the_gods/trigger/3.main
