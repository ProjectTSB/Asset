#> asset:container/2417/register
#
# コンテナの定義データ
#
# @within function asset:container/2417/


execute unless loaded 28 4 120 run return 1

# ID (int)
    data modify storage asset:container ID set value 2417
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [28, 4, 120]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:1b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:2b,Item:{id:"minecraft:salmon",Count:1b}},{Slot:3b,Item:{id:"minecraft:salmon",Count:1b}},{Slot:4b,Item:617},{Slot:5b,Item:{id:"minecraft:salmon",Count:1b}},{Slot:6b,Item:{id:"minecraft:salmon",Count:1b}},{Slot:7b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:8b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:9b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:10b,Item:{id:"minecraft:salmon",Count:1b}},{Slot:11b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:12b,Item:617},{Slot:13b,Item:217},{Slot:14b,Item:617},{Slot:15b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:16b,Item:{id:"minecraft:salmon",Count:1b}},{Slot:17b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:18b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:19b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:20b,Item:{id:"minecraft:salmon",Count:1b}},{Slot:21b,Item:{id:"minecraft:salmon",Count:1b}},{Slot:22b,Item:617},{Slot:23b,Item:{id:"minecraft:salmon",Count:1b}},{Slot:24b,Item:{id:"minecraft:salmon",Count:1b}},{Slot:25b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:26b,Item:{PresetItem:"currency/high",Count:1b}}]