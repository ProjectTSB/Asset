#> asset:artifact/0090.leather_armor_set/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/90/click/





# 装備変更成功の時
    execute as @s[nbt=!{Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]}] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.4 0.4 0.4 0.1 50
    execute as @s[nbt=!{Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]}] at @s run playsound minecraft:block.anvil.land player @a ~ ~ ~ 1 2

# 装備変更失敗の時
    execute as @s[nbt={Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]}] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.1 50
    execute as @s[nbt={Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]}] at @s run playsound minecraft:item.shield.break player @a ~ ~ ~ 1 0.5

# 装備返却処理
    execute as @s[nbt={Inventory:[{Slot:103b}]}] at @s run summon item ~ ~ ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:leather_helmet",Count:1b,tag:{display:{Name:'{"text":"簡易革防具","italic":false}'},RepairCost:9999,Enchantments:[{}]}}}
    execute as @s[nbt={Inventory:[{Slot:102b}]}] at @s run summon item ~ ~ ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{Name:'{"text":"簡易革防具","italic":false}'},RepairCost:9999,Enchantments:[{}]}}}
    execute as @s[nbt={Inventory:[{Slot:101b}]}] at @s run summon item ~ ~ ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:leather_leggings",Count:1b,tag:{display:{Name:'{"text":"簡易革防具","italic":false}'},RepairCost:9999,Enchantments:[{}]}}}
    execute as @s[nbt={Inventory:[{Slot:100b}]}] at @s run summon item ~ ~ ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{Name:'{"text":"簡易革防具","italic":false}'},RepairCost:9999,Enchantments:[{}]}}}

# 装備変更
    item replace entity @s[nbt=!{Inventory:[{Slot:103b}]}] armor.head with minecraft:leather_helmet{display:{Name:'{"text":"簡易革防具","italic":false}'},RepairCost:9999,Enchantments:[{}]} 1
    item replace entity @s[nbt=!{Inventory:[{Slot:102b}]}] armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"簡易革防具","italic":false}'},RepairCost:9999,Enchantments:[{}]} 1
    item replace entity @s[nbt=!{Inventory:[{Slot:101b}]}] armor.legs with minecraft:leather_leggings{display:{Name:'{"text":"簡易革防具","italic":false}'},RepairCost:9999,Enchantments:[{}]} 1
    item replace entity @s[nbt=!{Inventory:[{Slot:100b}]}] armor.feet with minecraft:leather_boots{display:{Name:'{"text":"簡易革防具","italic":false}'},RepairCost:9999,Enchantments:[{}]} 1