#> asset:container/112/register
#
# コンテナの定義データ
#
# @within function asset:container/112/


execute unless loaded 155 14 -76 run return 1

# ID (int)
    data modify storage asset:container ID set value 112
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [155, 14, -76]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:1b,Item:{id:"minecraft:pumpkin_pie",Count:1b}},{Slot:3b,Item:{id:"minecraft:beetroot",Count:2b}},{Slot:5b,Item:{id:"minecraft:bread",Count:2b}},{Slot:7b,Item:{id:"minecraft:beetroot",Count:2b}},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:11b,Item:{id:"minecraft:nether_star",Count:8b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:13b,Item:219},{Slot:15b,Item:{id:"minecraft:nether_star",Count:8b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:18b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:19b,Item:{id:"minecraft:beetroot",Count:2b}},{Slot:21b,Item:{id:"minecraft:bread",Count:2b}},{Slot:23b,Item:{id:"minecraft:beetroot",Count:2b}},{Slot:25b,Item:{id:"minecraft:pumpkin_pie",Count:1b}},{Slot:26b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}}]