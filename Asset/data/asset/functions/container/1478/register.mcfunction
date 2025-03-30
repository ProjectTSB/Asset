#> asset:container/1478/register
#
# コンテナの定義データ
#
# @within function asset:container/1478/


execute unless loaded 166 18 180 run return 1

# ID (int)
    data modify storage asset:container ID set value 1478
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [166, 18, 180]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/high",Count:8b}},{Slot:1b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:3b,Item:{id:"minecraft:cornflower",Count:4b}},{Slot:4b,Item:{id:"minecraft:dandelion",Count:8b}},{Slot:5b,Item:{id:"minecraft:cornflower",Count:4b}},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:7b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:8b,Item:{PresetItem:"currency/high",Count:8b}},{Slot:9b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:10b,Item:{id:"minecraft:cornflower",Count:4b}},{Slot:11b,Item:{id:"minecraft:cornflower",Count:4b}},{Slot:12b,Item:{id:"minecraft:dandelion",Count:8b}},{Slot:13b,Item:{id:"minecraft:poppy",Count:32b}},{Slot:14b,Item:{id:"minecraft:dandelion",Count:8b}},{Slot:15b,Item:{id:"minecraft:cornflower",Count:4b}},{Slot:16b,Item:{id:"minecraft:cornflower",Count:4b}},{Slot:17b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:18b,Item:{PresetItem:"currency/high",Count:8b}},{Slot:19b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:20b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:21b,Item:{id:"minecraft:cornflower",Count:4b}},{Slot:22b,Item:{id:"minecraft:dandelion",Count:8b}},{Slot:23b,Item:{id:"minecraft:cornflower",Count:4b}},{Slot:24b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:25b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:26b,Item:{PresetItem:"currency/high",Count:8b}}]