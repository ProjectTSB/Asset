#> asset:artifact/0958.whetstone_of_the_gods/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0958.whetstone_of_the_gods/trigger/1.trigger

#> Val
# @private
#declare score_holder $Progress

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く
# 剣/斧を持っていることを判定する
    execute unless predicate asset:artifact/0958.whetstone_of_the_gods/has_weapon run tellraw @s [{"text":"剣と斧以外を砥ぐことは出来ないようだ..."}]
    execute unless predicate asset:artifact/0958.whetstone_of_the_gods/has_weapon run tag @s remove CanUsed
# 神器ではないことを判定する
    execute if entity @s[tag=CanUsed] unless data storage asset:context id{mainhand:-2} run tellraw @s [{"text":"神器を砥ぐことは出来ないようだ..."}]
    execute if entity @s[tag=CanUsed] unless data storage asset:context id{mainhand:-2} run tag @s remove CanUsed
# 既に研がれていないことを判定する
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand.tag.Sharpened run tellraw @s [{"text":"既にこの武器は研がれているようだ..."}]
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand.tag.Sharpened run tag @s remove CanUsed
# 耐久が減っていないことを判定する
    execute if entity @s[tag=CanUsed] unless data storage asset:context Items.mainhand.tag{Damage:0} run tellraw @s [{"text":"既に切れ味が落ちている武器は砥げないようだ..."}]
    execute if entity @s[tag=CanUsed] unless data storage asset:context Items.mainhand.tag{Damage:0} run tag @s remove CanUsed
# 剣/斧に応じた島攻略割合が出来ているか判定する
    execute if entity @s[tag=CanUsed] run function api:global_vars/game_progress
    execute if entity @s[tag=CanUsed] store result score $Progress Temporary run data get storage api: Return.Progress 100
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:    "minecraft:stone_sword"} unless score $Progress Temporary matches 10.. run tellraw @s [{"text":"この材質の剣を砥ぐには攻略度が","color":"white"},{"text":"10%","color":"aqua"},{"text":"必要なようだ...","color":"white"}]
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:    "minecraft:stone_sword"} unless score $Progress Temporary matches 10.. run tag @s remove CanUsed
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:     "minecraft:iron_sword"} unless score $Progress Temporary matches 20.. run tellraw @s [{"text":"この材質の剣を砥ぐには攻略度が","color":"white"},{"text":"20%","color":"aqua"},{"text":"必要なようだ...","color":"white"}]
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:     "minecraft:iron_sword"} unless score $Progress Temporary matches 20.. run tag @s remove CanUsed
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:   "minecraft:golden_sword"} unless score $Progress Temporary matches 40.. run tellraw @s [{"text":"この材質の剣を砥ぐには攻略度が","color":"white"},{"text":"40%","color":"aqua"},{"text":"必要なようだ...","color":"white"}]
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:   "minecraft:golden_sword"} unless score $Progress Temporary matches 40.. run tag @s remove CanUsed
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:  "minecraft:diamond_sword"} unless score $Progress Temporary matches 55.. run tellraw @s [{"text":"この材質の剣を砥ぐには攻略度が","color":"white"},{"text":"55%","color":"aqua"},{"text":"必要なようだ...","color":"white"}]
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:  "minecraft:diamond_sword"} unless score $Progress Temporary matches 55.. run tag @s remove CanUsed
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:"minecraft:netherite_sword"} unless score $Progress Temporary matches 75.. run tellraw @s [{"text":"この材質の剣を砥ぐには攻略度が","color":"white"},{"text":"75%","color":"aqua"},{"text":"必要なようだ...","color":"white"}]
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:"minecraft:netherite_sword"} unless score $Progress Temporary matches 75.. run tag @s remove CanUsed
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:      "minecraft:stone_axe"} unless score $Progress Temporary matches 10.. run tellraw @s [{"text":"この材質の斧を砥ぐには攻略度が","color":"white"},{"text":"10%","color":"aqua"},{"text":"必要なようだ...","color":"white"}]
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:      "minecraft:stone_axe"} unless score $Progress Temporary matches 10.. run tag @s remove CanUsed
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:       "minecraft:iron_axe"} unless score $Progress Temporary matches 20.. run tellraw @s [{"text":"この材質の斧を砥ぐには攻略度が","color":"white"},{"text":"20%","color":"aqua"},{"text":"必要なようだ...","color":"white"}]
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:       "minecraft:iron_axe"} unless score $Progress Temporary matches 20.. run tag @s remove CanUsed
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:     "minecraft:golden_axe"} unless score $Progress Temporary matches 40.. run tellraw @s [{"text":"この材質の斧を砥ぐには攻略度が","color":"white"},{"text":"40%","color":"aqua"},{"text":"必要なようだ...","color":"white"}]
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:     "minecraft:golden_axe"} unless score $Progress Temporary matches 40.. run tag @s remove CanUsed
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:    "minecraft:diamond_axe"} unless score $Progress Temporary matches 55.. run tellraw @s [{"text":"この材質の斧を砥ぐには攻略度が","color":"white"},{"text":"55%","color":"aqua"},{"text":"必要なようだ...","color":"white"}]
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:    "minecraft:diamond_axe"} unless score $Progress Temporary matches 55.. run tag @s remove CanUsed
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:  "minecraft:netherite_axe"} unless score $Progress Temporary matches 75.. run tellraw @s [{"text":"この材質の斧を砥ぐには攻略度が","color":"white"},{"text":"75%","color":"aqua"},{"text":"必要なようだ...","color":"white"}]
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:  "minecraft:netherite_axe"} unless score $Progress Temporary matches 75.. run tag @s remove CanUsed
# リセット
    scoreboard players reset $Progress Temporary
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0958.whetstone_of_the_gods/trigger/3.main
