#> asset:container/2581/register
#
# コンテナの定義データ
#
# @within function asset:container/2581/


execute unless loaded -171 211 196 run return 1

# ID (int)
    data modify storage asset:container ID set value 2581
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-171, 211, 196]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:1b,Item:{id:"minecraft:packed_ice",Count:1b}},{Slot:2b,Item:{id:"minecraft:ice",Count:1b}},{Slot:3b,Item:{id:"minecraft:ice",Count:1b}},{Slot:4b,Item:{id:"minecraft:ice",Count:1b}},{Slot:5b,Item:{id:"minecraft:ice",Count:1b}},{Slot:6b,Item:{id:"minecraft:ice",Count:1b}},{Slot:7b,Item:{id:"minecraft:packed_ice",Count:1b}},{Slot:8b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:9b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:10b,Item:{id:"minecraft:packed_ice",Count:1b}},{Slot:11b,Item:{id:"minecraft:ice",Count:1b}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:15b,Item:{id:"minecraft:ice",Count:1b}},{Slot:16b,Item:{id:"minecraft:packed_ice",Count:1b}},{Slot:17b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:18b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:19b,Item:{id:"minecraft:packed_ice",Count:1b}},{Slot:20b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:22b,Item:907},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:24b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:25b,Item:{id:"minecraft:packed_ice",Count:1b}},{Slot:26b,Item:{id:"minecraft:blue_ice",Count:1b}}]