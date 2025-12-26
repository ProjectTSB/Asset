#> asset:container/2449/register
#
# コンテナの定義データ
#
# @within function asset:container/2449/


execute unless loaded -162 166 -349 run return 1

# ID (int)
    data modify storage asset:container ID set value 2449
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-162, 166, -349]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:gold_ingot",Count:16b}},{Slot:1b,Item:{id:"minecraft:gold_block",Count:8b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-2",Count:4b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-2",Count:4b}},{Slot:7b,Item:{id:"minecraft:gold_block",Count:8b}},{Slot:8b,Item:{id:"minecraft:gold_ingot",Count:16b}},{Slot:9b,Item:{id:"minecraft:gold_block",Count:8b}},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-2",Count:4b}},{Slot:11b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:13b,Item:{id:"minecraft:axolotl_bucket",Count:1b}},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:15b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-2",Count:4b}},{Slot:17b,Item:{id:"minecraft:gold_block",Count:8b}},{Slot:18b,Item:{id:"minecraft:gold_ingot",Count:16b}},{Slot:19b,Item:{id:"minecraft:gold_block",Count:8b}},{Slot:20b,Item:{PresetItem:"sacred_shard/lv-2",Count:4b}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:24b,Item:{PresetItem:"sacred_shard/lv-2",Count:4b}},{Slot:25b,Item:{id:"minecraft:gold_block",Count:8b}},{Slot:26b,Item:{id:"minecraft:gold_ingot",Count:16b}}]