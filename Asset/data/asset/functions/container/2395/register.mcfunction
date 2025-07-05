#> asset:container/2395/register
#
# コンテナの定義データ
#
# @within function asset:container/2395/


execute unless loaded -35 21 -18 run return 1

# ID (int)
    data modify storage asset:container ID set value 2395
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-35, 21, -18]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:2b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:3b,Item:{id:"minecraft:oak_log",Count:2b}},{Slot:4b,Item:{id:"minecraft:oak_log",Count:2b}},{Slot:5b,Item:{id:"minecraft:oak_log",Count:2b}},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:11b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:12b,Item:{id:"minecraft:oak_log",Count:2b}},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:14b,Item:{id:"minecraft:oak_log",Count:2b}},{Slot:15b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:20b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:21b,Item:{id:"minecraft:oak_log",Count:2b}},{Slot:22b,Item:{id:"minecraft:oak_log",Count:2b}},{Slot:23b,Item:{id:"minecraft:oak_log",Count:2b}},{Slot:24b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}}]