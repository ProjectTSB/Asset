#> asset:container/156/register
#
# コンテナの定義データ
#
# @within function asset:container/156/


execute unless loaded -146 73 133 run return 1

# ID (int)
    data modify storage asset:container ID set value 156
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-146, 73, 133]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=south]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:nether_star",Count:16b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:1b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{}}},{Slot:2b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{}}},{Slot:3b,Item:{id:"minecraft:honey_bottle",Count:1b,tag:{}}},{Slot:4b,Item:{id:"minecraft:honey_bottle",Count:1b,tag:{}}},{Slot:5b,Item:{id:"minecraft:honey_bottle",Count:1b,tag:{}}},{Slot:6b,Item:{id:"minecraft:gold_ingot",Count:1b,tag:{}}},{Slot:7b,Item:{id:"minecraft:gold_ingot",Count:1b,tag:{}}},{Slot:8b,Item:{id:"minecraft:nether_star",Count:16b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:9b,Item:{id:"minecraft:copper_ingot",Count:1b,tag:{}}},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-2",Count:2b}},{Slot:11b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{}}},{Slot:12b,Item:{id:"minecraft:honey_bottle",Count:1b,tag:{}}},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:14b,Item:{id:"minecraft:honey_bottle",Count:1b,tag:{}}},{Slot:15b,Item:{id:"minecraft:gold_ingot",Count:1b,tag:{}}},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-2",Count:2b}},{Slot:17b,Item:{id:"minecraft:copper_ingot",Count:1b,tag:{}}},{Slot:18b,Item:{id:"minecraft:nether_star",Count:16b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:19b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{}}},{Slot:20b,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{}}},{Slot:21b,Item:{id:"minecraft:honey_bottle",Count:1b,tag:{}}},{Slot:22b,Item:{id:"minecraft:honey_bottle",Count:1b,tag:{}}},{Slot:23b,Item:{id:"minecraft:honey_bottle",Count:1b,tag:{}}},{Slot:24b,Item:{id:"minecraft:gold_ingot",Count:1b,tag:{}}},{Slot:25b,Item:{id:"minecraft:gold_ingot",Count:1b,tag:{}}},{Slot:26b,Item:{id:"minecraft:nether_star",Count:16b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}}]