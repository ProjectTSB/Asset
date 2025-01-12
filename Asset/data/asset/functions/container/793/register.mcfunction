#> asset:container/793/register
#
# コンテナの定義データ
#
# @within function asset:container/793/


execute unless loaded -78 30 1 run return 1

# ID (int)
    data modify storage asset:container ID set value 793
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-78, 30, 1]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:hanging_roots",Count:1b,tag:{}}},{Slot:1b,Item:{id:"minecraft:hanging_roots",Count:1b,tag:{}}},{Slot:2b,Item:{id:"minecraft:flowering_azalea_leaves",Count:2b,tag:{}}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:4b,Item:{id:"minecraft:flowering_azalea_leaves",Count:2b,tag:{}}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:6b,Item:{id:"minecraft:flowering_azalea_leaves",Count:2b,tag:{}}},{Slot:7b,Item:{id:"minecraft:hanging_roots",Count:1b,tag:{}}},{Slot:8b,Item:{id:"minecraft:hanging_roots",Count:1b,tag:{}}},{Slot:9b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:10b,Item:{id:"minecraft:nether_star",Count:1b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:11b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:12b,Item:{id:"minecraft:flowering_azalea_leaves",Count:2b,tag:{}}},{Slot:13b,Item:237},{Slot:14b,Item:{id:"minecraft:flowering_azalea_leaves",Count:2b,tag:{}}},{Slot:15b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:16b,Item:{id:"minecraft:nether_star",Count:1b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:17b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:18b,Item:{id:"minecraft:moss_block",Count:1b,tag:{}}},{Slot:19b,Item:{id:"minecraft:torchflower",Count:1b,tag:{}}},{Slot:20b,Item:{id:"minecraft:moss_block",Count:1b,tag:{}}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:22b,Item:{id:"minecraft:flowering_azalea_leaves",Count:2b,tag:{}}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:24b,Item:{id:"minecraft:moss_block",Count:1b,tag:{}}},{Slot:25b,Item:{id:"minecraft:torchflower",Count:1b,tag:{}}},{Slot:26b,Item:{id:"minecraft:moss_block",Count:1b,tag:{}}}]