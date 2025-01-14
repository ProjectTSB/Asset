#> asset:container/901/register
#
# コンテナの定義データ
#
# @within function asset:container/901/


execute unless loaded -70 240 397 run return 1

# ID (int)
    data modify storage asset:container ID set value 901
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-70, 240, 397]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:1b,Item:{id:"minecraft:bookshelf",Count:16b}},{Slot:2b,Item:{PresetItem:"currency/",Count:32b}},{Slot:3b,Item:{id:"minecraft:book",Count:16b}},{Slot:4b,Item:{id:"minecraft:lapis_block",Count:8b}},{Slot:5b,Item:{id:"minecraft:book",Count:16b}},{Slot:6b,Item:{PresetItem:"currency/",Count:32b}},{Slot:7b,Item:{id:"minecraft:bookshelf",Count:16b}},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:9b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:10b,Item:{id:"minecraft:bookshelf",Count:16b}},{Slot:11b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:12b,Item:{id:"minecraft:lapis_block",Count:8b}},{Slot:13b,Item:431},{Slot:14b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:15b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:16b,Item:{id:"minecraft:bookshelf",Count:16b}},{Slot:17b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:18b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:19b,Item:{id:"minecraft:bookshelf",Count:16b}},{Slot:20b,Item:{PresetItem:"currency/",Count:32b}},{Slot:21b,Item:{id:"minecraft:book",Count:16b}},{Slot:22b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:23b,Item:{id:"minecraft:book",Count:16b}},{Slot:24b,Item:{PresetItem:"currency/",Count:32b}},{Slot:25b,Item:{id:"minecraft:bookshelf",Count:16b}},{Slot:26b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}}]