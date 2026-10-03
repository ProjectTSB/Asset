#> asset:object/1166.after_glow/tick/check_hotbar
#
# 使用者のホットバーの確認
#
# @within asset:object/1166.after_glow/tick/check
#> Private
# @private
    #declare tag 14E.Success


# ホットバーの確認
    scoreboard players set @s Temporary 0
    execute if data entity @s Inventory[{Slot:0b}] run scoreboard players add @s Temporary 1
    execute if data entity @s Inventory[{Slot:1b}] run scoreboard players add @s Temporary 1
    execute if data entity @s Inventory[{Slot:2b}] run scoreboard players add @s Temporary 1
    execute if data entity @s Inventory[{Slot:3b}] run scoreboard players add @s Temporary 1
    execute if data entity @s Inventory[{Slot:4b}] run scoreboard players add @s Temporary 1
    execute if data entity @s Inventory[{Slot:5b}] run scoreboard players add @s Temporary 1
    execute if data entity @s Inventory[{Slot:6b}] run scoreboard players add @s Temporary 1
    execute if data entity @s Inventory[{Slot:7b}] run scoreboard players add @s Temporary 1
    execute if data entity @s Inventory[{Slot:8b}] run scoreboard players add @s Temporary 1
# 0にならないように
    scoreboard players set @s[scores={Temporary=0}] Temporary 1
# 1なら確定なのでここでタグ付与
    execute if score @s Temporary matches 1 run tag @s add 14E.Success

# マクロへ
    execute store result storage asset:temp Chance int 1 run scoreboard players get @s Temporary
    scoreboard players reset @s Temporary
    function asset:object/1166.after_glow/tick/roll.m with storage asset:temp
    data remove storage asset:temp Chance
