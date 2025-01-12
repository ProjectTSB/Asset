#> asset:container/101/register
#
# コンテナの定義データ
#
# @within function asset:container/101/


execute unless loaded 42 10 -118 run return 1

# ID (int)
    data modify storage asset:container ID set value 101
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [42, 10, -118]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:raw_iron",Count:1b,tag:{}}},{Slot:1b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{}}},{Slot:2b,Item:{id:"minecraft:raw_iron",Count:1b,tag:{}}},{Slot:3b,Item:{id:"minecraft:iron_pickaxe",Count:1b,tag:{"Damage":0}}},{Slot:4b,Item:{id:"minecraft:nether_star",Count:4b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:5b,Item:{id:"minecraft:iron_hoe",Count:1b,tag:{"Damage":0}}},{Slot:6b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{}}},{Slot:7b,Item:{id:"minecraft:raw_iron",Count:1b,tag:{}}},{Slot:8b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{}}},{Slot:9b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{}}},{Slot:10b,Item:{id:"minecraft:ender_pearl",Count:1b,tag:{}}},{Slot:11b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{}}},{Slot:12b,Item:318},{Slot:13b,Item:{id:"minecraft:diamond",Count:1b,tag:{}}},{Slot:14b,Item:248},{Slot:15b,Item:{id:"minecraft:raw_iron",Count:1b,tag:{}}},{Slot:16b,Item:{id:"minecraft:ender_pearl",Count:1b,tag:{}}},{Slot:17b,Item:{id:"minecraft:raw_iron",Count:1b,tag:{}}},{Slot:18b,Item:{id:"minecraft:raw_iron",Count:1b,tag:{}}},{Slot:19b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{}}},{Slot:20b,Item:{id:"minecraft:raw_iron",Count:1b,tag:{}}},{Slot:21b,Item:{id:"minecraft:iron_axe",Count:1b,tag:{"Damage":0}}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-2",Count:2b}},{Slot:23b,Item:{id:"minecraft:iron_shovel",Count:1b,tag:{"Damage":0}}},{Slot:24b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{}}},{Slot:25b,Item:{id:"minecraft:raw_iron",Count:1b,tag:{}}},{Slot:26b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{}}}]