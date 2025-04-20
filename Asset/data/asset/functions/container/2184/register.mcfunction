#> asset:container/2184/register
#
# コンテナの定義データ
#
# @within function asset:container/2184/


execute unless loaded 278 132 125 run return 1

# ID (int)
    data modify storage asset:container ID set value 2184
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [278, 132, 125]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:1b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:7b,Item:{id:"minecraft:light_blue_wool",Count:1b}},{Slot:8b,Item:{id:"minecraft:light_blue_wool",Count:1b}},{Slot:9b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:11b,Item:1150},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:13b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:15b,Item:{id:"minecraft:light_blue_wool",Count:1b}},{Slot:16b,Item:{PresetItem:"currency/",Count:1b}},{Slot:17b,Item:{id:"minecraft:light_blue_wool",Count:1b}},{Slot:19b,Item:{id:"minecraft:white_wool",Count:1b}},{Slot:20b,Item:{id:"minecraft:redstone_block",Count:1b}},{Slot:21b,Item:{id:"minecraft:black_wool",Count:1b}},{Slot:23b,Item:{id:"minecraft:blue_wool",Count:1b}},{Slot:24b,Item:{id:"minecraft:blue_wool",Count:1b}},{Slot:25b,Item:{id:"minecraft:light_blue_wool",Count:1b}}]