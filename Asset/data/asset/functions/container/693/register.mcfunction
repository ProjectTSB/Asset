#> asset:container/693/register
#
# コンテナの定義データ
#
# @within function asset:container/693/


execute unless loaded 208 30 -7 run return 1

# ID (int)
    data modify storage asset:container ID set value 693
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [208, 30, -7]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:nether_star",Count:16b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:1b,Item:137},{Slot:2b,Item:{id:"minecraft:iron_ingot",Count:3b}},{Slot:3b,Item:{id:"minecraft:coal",Count:12b}},{Slot:4b,Item:{id:"minecraft:gold_ingot",Count:16b}},{Slot:5b,Item:{id:"minecraft:iron_pickaxe",Count:1b,tag:{"Damage":0}}},{Slot:6b,Item:{id:"minecraft:iron_ingot",Count:3b}},{Slot:7b,Item:137},{Slot:8b,Item:{id:"minecraft:nether_star",Count:16b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:9b,Item:{id:"minecraft:gold_ingot",Count:3b}},{Slot:10b,Item:{id:"minecraft:crimson_hyphae",Count:16b}},{Slot:11b,Item:{id:"minecraft:gold_ingot",Count:3b}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-2",Count:2b}},{Slot:13b,Item:146},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-2",Count:2b}},{Slot:15b,Item:{id:"minecraft:gold_ingot",Count:3b}},{Slot:16b,Item:{id:"minecraft:crimson_hyphae",Count:16b}},{Slot:17b,Item:{id:"minecraft:gold_ingot",Count:3b}},{Slot:18b,Item:{id:"minecraft:nether_star",Count:16b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:19b,Item:137},{Slot:20b,Item:{id:"minecraft:iron_ingot",Count:3b}},{Slot:21b,Item:{id:"minecraft:iron_pickaxe",Count:1b,tag:{"Damage":0}}},{Slot:22b,Item:{id:"minecraft:gold_ingot",Count:16b}},{Slot:23b,Item:{id:"minecraft:coal",Count:12b}},{Slot:24b,Item:{id:"minecraft:iron_ingot",Count:3b}},{Slot:25b,Item:137},{Slot:26b,Item:{id:"minecraft:nether_star",Count:16b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}}]