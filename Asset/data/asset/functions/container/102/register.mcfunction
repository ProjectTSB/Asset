#> asset:container/102/register
#
# コンテナの定義データ
#
# @within function asset:container/102/


execute unless loaded 62 24 -149 run return 1

# ID (int)
    data modify storage asset:container ID set value 102
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [62, 24, -149]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:ender_eye",Count:1b}},{Slot:1b,Item:{id:"minecraft:obsidian",Count:6b}},{Slot:2b,Item:{id:"minecraft:ender_eye",Count:1b}},{Slot:3b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:4b,Item:368},{Slot:5b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:6b,Item:{id:"minecraft:ender_eye",Count:1b}},{Slot:7b,Item:{id:"minecraft:crying_obsidian",Count:6b}},{Slot:8b,Item:{id:"minecraft:ender_eye",Count:1b}},{Slot:9b,Item:{id:"minecraft:raw_gold_block",Count:6b}},{Slot:10b,Item:219},{Slot:11b,Item:{PresetItem:"sacred_shard/lv-2",Count:2b}},{Slot:12b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:13b,Item:71},{Slot:14b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:15b,Item:{PresetItem:"sacred_shard/lv-2",Count:2b}},{Slot:16b,Item:219},{Slot:17b,Item:{id:"minecraft:raw_gold_block",Count:6b}},{Slot:18b,Item:{id:"minecraft:ender_eye",Count:1b}},{Slot:19b,Item:{id:"minecraft:crying_obsidian",Count:6b}},{Slot:20b,Item:{id:"minecraft:ender_eye",Count:1b}},{Slot:21b,Item:371},{Slot:22b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:23b,Item:374},{Slot:24b,Item:{id:"minecraft:ender_eye",Count:1b}},{Slot:25b,Item:{id:"minecraft:obsidian",Count:6b}},{Slot:26b,Item:{id:"minecraft:ender_eye",Count:1b}}]