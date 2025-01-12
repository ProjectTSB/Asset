#> asset:container/855/register
#
# コンテナの定義データ
#
# @within function asset:container/855/


execute unless loaded 197 19 -132 run return 1

# ID (int)
    data modify storage asset:container ID set value 855
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [197, 19, -132]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up,type=null]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:1b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:2b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{}}},{Slot:3b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{}}},{Slot:4b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{}}},{Slot:5b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{}}},{Slot:6b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{}}},{Slot:7b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:9b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:10b,Item:{id:"minecraft:nether_star",Count:3b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:11b,Item:960},{Slot:12b,Item:{id:"minecraft:nether_star",Count:3b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:14b,Item:{id:"minecraft:nether_star",Count:3b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:15b,Item:961},{Slot:16b,Item:{id:"minecraft:nether_star",Count:3b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:17b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:18b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:19b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:20b,Item:{id:"minecraft:gold_ingot",Count:1b,tag:{}}},{Slot:21b,Item:{id:"minecraft:gold_ingot",Count:1b,tag:{}}},{Slot:22b,Item:{id:"minecraft:gold_ingot",Count:1b,tag:{}}},{Slot:23b,Item:{id:"minecraft:gold_ingot",Count:1b,tag:{}}},{Slot:24b,Item:{id:"minecraft:gold_ingot",Count:1b,tag:{}}},{Slot:25b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:26b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}}]