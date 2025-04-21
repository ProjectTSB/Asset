#> asset:container/1393/register
#
# コンテナの定義データ
#
# @within function asset:container/1393/


execute unless loaded -31 2 102 run return 1

# ID (int)
    data modify storage asset:container ID set value 1393
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-31, 2, 102]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:1b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:2b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:3b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:4b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:5b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:6b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:7b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:8b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:9b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:10b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:11b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:12b,Item:{id:"minecraft:repeater",Count:1b}},{Slot:13b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:14b,Item:{id:"minecraft:repeater",Count:1b}},{Slot:15b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:16b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:17b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:18b,Item:{id:"minecraft:note_block",Count:1b}},{Slot:19b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:20b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:21b,Item:{id:"minecraft:redstone_block",Count:1b}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:23b,Item:{id:"minecraft:redstone_block",Count:1b}},{Slot:24b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:25b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:26b,Item:{id:"minecraft:note_block",Count:1b}}]