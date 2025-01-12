#> asset:container/1369/register
#
# コンテナの定義データ
#
# @within function asset:container/1369/


execute unless loaded -143 51 -130 run return 1

# ID (int)
    data modify storage asset:container ID set value 1369
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-143, 51, -130]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:3b,Item:801},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:5b,Item:607},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:9b,Item:{id:"minecraft:nether_star",Count:21b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:17b,Item:{id:"minecraft:nether_star",Count:21b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:18b,Item:{id:"minecraft:nether_star",Count:21b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:19b,Item:{id:"minecraft:nether_star",Count:21b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:20b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:24b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:25b,Item:{id:"minecraft:nether_star",Count:21b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:26b,Item:{id:"minecraft:nether_star",Count:21b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}}]