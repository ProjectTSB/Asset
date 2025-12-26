#> asset:container/2541/register
#
# コンテナの定義データ
#
# @within function asset:container/2541/


execute unless loaded 22 42 360 run return 1

# ID (int)
    data modify storage asset:container ID set value 2541
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [22, 42, 360]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:blaze_powder",Count:1b}},{Slot:1b,Item:{id:"minecraft:fire_charge",Count:1b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:3b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:4b,Item:{PresetItem:"currency/high",Count:16b}},{Slot:5b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:7b,Item:{id:"minecraft:fire_charge",Count:1b}},{Slot:8b,Item:{id:"minecraft:blaze_powder",Count:1b}},{Slot:9b,Item:{id:"minecraft:blaze_powder",Count:1b}},{Slot:10b,Item:{id:"minecraft:blaze_powder",Count:1b}},{Slot:11b,Item:{id:"minecraft:fire_charge",Count:1b}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:13b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:15b,Item:{id:"minecraft:fire_charge",Count:1b}},{Slot:16b,Item:{id:"minecraft:blaze_powder",Count:1b}},{Slot:17b,Item:{id:"minecraft:blaze_powder",Count:1b}},{Slot:18b,Item:{id:"minecraft:blaze_powder",Count:1b}},{Slot:19b,Item:{id:"minecraft:blaze_powder",Count:1b}},{Slot:20b,Item:{id:"minecraft:blaze_powder",Count:1b}},{Slot:21b,Item:{id:"minecraft:blaze_powder",Count:1b}},{Slot:22b,Item:{id:"minecraft:blaze_powder",Count:1b}},{Slot:23b,Item:{id:"minecraft:blaze_powder",Count:1b}},{Slot:24b,Item:{id:"minecraft:blaze_powder",Count:1b}},{Slot:25b,Item:{id:"minecraft:blaze_powder",Count:1b}},{Slot:26b,Item:{id:"minecraft:blaze_powder",Count:1b}}]