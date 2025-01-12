#> asset:container/902/register
#
# コンテナの定義データ
#
# @within function asset:container/902/


execute unless loaded -70 240 398 run return 1

# ID (int)
    data modify storage asset:container ID set value 902
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-70, 240, 398]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:1b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:2b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:3b,Item:{id:"minecraft:book",Count:16b,tag:{}}},{Slot:4b,Item:{id:"minecraft:lapis_block",Count:8b,tag:{}}},{Slot:5b,Item:{id:"minecraft:book",Count:16b,tag:{}}},{Slot:6b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:7b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:8b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:9b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:11b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:12b,Item:{id:"minecraft:lapis_block",Count:8b,tag:{}}},{Slot:13b,Item:246},{Slot:14b,Item:{id:"minecraft:diamond_block",Count:2b,tag:{}}},{Slot:15b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:17b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:18b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:19b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:20b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:21b,Item:{id:"minecraft:book",Count:16b,tag:{}}},{Slot:22b,Item:{id:"minecraft:diamond_block",Count:2b,tag:{}}},{Slot:23b,Item:{id:"minecraft:book",Count:16b,tag:{}}},{Slot:24b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:25b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:26b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}}]