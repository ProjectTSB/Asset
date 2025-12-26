#> asset:container/2511/register
#
# コンテナの定義データ
#
# @within function asset:container/2511/


execute unless loaded -30 2 102 run return 1

# ID (int)
    data modify storage asset:container ID set value 2511
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-30, 2, 102]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:1b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:3b,Item:{id:"minecraft:redstone_block",Count:1b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:5b,Item:{id:"minecraft:redstone_block",Count:1b}},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:7b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:8b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:9b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:10b,Item:{id:"minecraft:paper",Count:4b}},{Slot:11b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:12b,Item:{id:"minecraft:repeater",Count:1b}},{Slot:13b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:14b,Item:{id:"minecraft:repeater",Count:1b}},{Slot:15b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:16b,Item:{id:"minecraft:paper",Count:4b}},{Slot:17b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:18b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:19b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:20b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:21b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:22b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:23b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:24b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:25b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:26b,Item:{id:"minecraft:note_block",Count:1b}}]