#> asset:container/2421/register
#
# コンテナの定義データ
#
# @within function asset:container/2421/


execute unless loaded 197 19 -132 run return 1

# ID (int)
    data modify storage asset:container ID set value 2421
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [197, 19, -132]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:1b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:2b,Item:{id:"minecraft:iron_ingot",Count:3b}},{Slot:3b,Item:{id:"minecraft:iron_ingot",Count:3b}},{Slot:4b,Item:{id:"minecraft:iron_ingot",Count:3b}},{Slot:5b,Item:{id:"minecraft:iron_ingot",Count:3b}},{Slot:6b,Item:{id:"minecraft:iron_ingot",Count:3b}},{Slot:7b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:9b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:10b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:11b,Item:960},{Slot:12b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:14b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:15b,Item:961},{Slot:16b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:17b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:18b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:19b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:20b,Item:{id:"minecraft:coal",Count:5b}},{Slot:21b,Item:{id:"minecraft:coal",Count:5b}},{Slot:22b,Item:{id:"minecraft:coal",Count:5b}},{Slot:23b,Item:{id:"minecraft:coal",Count:5b}},{Slot:24b,Item:{id:"minecraft:coal",Count:5b}},{Slot:25b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:26b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}}]