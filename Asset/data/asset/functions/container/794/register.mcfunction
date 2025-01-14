#> asset:container/794/register
#
# コンテナの定義データ
#
# @within function asset:container/794/


execute unless loaded -202 211 648 run return 1

# ID (int)
    data modify storage asset:container ID set value 794
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-202, 211, 648]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-2",Count:8b}},{Slot:1b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:7b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-2",Count:8b}},{Slot:9b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:10b,Item:103},{Slot:11b,Item:{id:"minecraft:ender_pearl",Count:6b}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:13b,Item:987},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:15b,Item:{id:"minecraft:ender_pearl",Count:6b}},{Slot:16b,Item:252},{Slot:17b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:18b,Item:{PresetItem:"sacred_shard/lv-2",Count:8b}},{Slot:19b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:20b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:24b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:25b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:26b,Item:{PresetItem:"sacred_shard/lv-2",Count:8b}}]