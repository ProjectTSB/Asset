#> asset:container/725/register
#
# コンテナの定義データ
#
# @within function asset:container/725/


execute unless loaded -56 29 -159 run return 1

# ID (int)
    data modify storage asset:container ID set value 725
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-56, 29, -159]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=true,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:blue_ice",Count:1b,tag:{}}},{Slot:1b,Item:{id:"minecraft:packed_ice",Count:1b,tag:{}}},{Slot:2b,Item:{id:"minecraft:ice",Count:1b,tag:{}}},{Slot:3b,Item:{id:"minecraft:ice",Count:1b,tag:{}}},{Slot:4b,Item:{id:"minecraft:nether_star",Count:8b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:5b,Item:{id:"minecraft:ice",Count:1b,tag:{}}},{Slot:6b,Item:{id:"minecraft:ice",Count:1b,tag:{}}},{Slot:7b,Item:{id:"minecraft:packed_ice",Count:1b,tag:{}}},{Slot:8b,Item:{id:"minecraft:blue_ice",Count:1b,tag:{}}},{Slot:9b,Item:{id:"minecraft:blue_ice",Count:1b,tag:{}}},{Slot:10b,Item:{id:"minecraft:blue_ice",Count:1b,tag:{}}},{Slot:11b,Item:{id:"minecraft:packed_ice",Count:1b,tag:{}}},{Slot:12b,Item:{id:"minecraft:nether_star",Count:8b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:13b,Item:322},{Slot:14b,Item:{id:"minecraft:nether_star",Count:8b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:15b,Item:{id:"minecraft:packed_ice",Count:1b,tag:{}}},{Slot:16b,Item:{id:"minecraft:blue_ice",Count:1b,tag:{}}},{Slot:17b,Item:{id:"minecraft:blue_ice",Count:1b,tag:{}}},{Slot:18b,Item:{id:"minecraft:blue_ice",Count:1b,tag:{}}},{Slot:19b,Item:{id:"minecraft:blue_ice",Count:1b,tag:{}}},{Slot:20b,Item:{id:"minecraft:blue_ice",Count:1b,tag:{}}},{Slot:21b,Item:{id:"minecraft:packed_ice",Count:1b,tag:{}}},{Slot:22b,Item:{id:"minecraft:nether_star",Count:8b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:23b,Item:{id:"minecraft:packed_ice",Count:1b,tag:{}}},{Slot:24b,Item:{id:"minecraft:blue_ice",Count:1b,tag:{}}},{Slot:25b,Item:{id:"minecraft:blue_ice",Count:1b,tag:{}}},{Slot:26b,Item:{id:"minecraft:blue_ice",Count:1b,tag:{}}}]