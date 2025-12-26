#> asset:container/2668/register
#
# コンテナの定義データ
#
# @within function asset:container/2668/


execute unless loaded -70 240 398 run return 1

# ID (int)
    data modify storage asset:container ID set value 2668
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-70, 240, 398]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:bookshelf",Count:8b}},{Slot:1b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:2b,Item:{id:"minecraft:bookshelf",Count:8b}},{Slot:3b,Item:{id:"minecraft:book",Count:16b}},{Slot:4b,Item:{id:"minecraft:lapis_block",Count:8b}},{Slot:5b,Item:{id:"minecraft:book",Count:16b}},{Slot:6b,Item:{id:"minecraft:bookshelf",Count:8b}},{Slot:7b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:8b,Item:{id:"minecraft:bookshelf",Count:8b}},{Slot:9b,Item:{id:"minecraft:bookshelf",Count:8b}},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:11b,Item:{id:"minecraft:bookshelf",Count:8b}},{Slot:12b,Item:{id:"minecraft:lapis_block",Count:8b}},{Slot:13b,Item:246},{Slot:14b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:15b,Item:{id:"minecraft:bookshelf",Count:8b}},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:17b,Item:{id:"minecraft:bookshelf",Count:8b}},{Slot:18b,Item:{id:"minecraft:bookshelf",Count:8b}},{Slot:19b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:20b,Item:{id:"minecraft:bookshelf",Count:8b}},{Slot:21b,Item:{id:"minecraft:book",Count:16b}},{Slot:22b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:23b,Item:{id:"minecraft:book",Count:16b}},{Slot:24b,Item:{id:"minecraft:bookshelf",Count:8b}},{Slot:25b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:26b,Item:{id:"minecraft:bookshelf",Count:8b}}]