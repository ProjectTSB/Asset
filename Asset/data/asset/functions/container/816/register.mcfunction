#> asset:container/816/register
#
# コンテナの定義データ
#
# @within function asset:container/816/


execute unless loaded -203 225 393 run return 1

# ID (int)
    data modify storage asset:container ID set value 816
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-203, 225, 393]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:spruce_planks",Count:1b}},{Slot:1b,Item:{id:"minecraft:spruce_planks",Count:1b}},{Slot:2b,Item:{id:"minecraft:spruce_planks",Count:1b}},{Slot:3b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:5b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:6b,Item:{id:"minecraft:spruce_planks",Count:1b}},{Slot:7b,Item:{id:"minecraft:spruce_planks",Count:1b}},{Slot:8b,Item:{id:"minecraft:spruce_planks",Count:1b}},{Slot:9b,Item:{id:"minecraft:oak_log",Count:1b}},{Slot:10b,Item:{id:"minecraft:bell",Count:1b}},{Slot:11b,Item:{id:"minecraft:oak_log",Count:1b}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:13b,Item:{id:"minecraft:beacon",Count:1b}},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:15b,Item:{id:"minecraft:oak_log",Count:1b}},{Slot:16b,Item:{id:"minecraft:bell",Count:1b}},{Slot:17b,Item:{id:"minecraft:oak_log",Count:1b}},{Slot:18b,Item:{id:"minecraft:oak_log",Count:1b}},{Slot:19b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:20b,Item:{id:"minecraft:oak_log",Count:1b}},{Slot:21b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:23b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:24b,Item:{id:"minecraft:oak_log",Count:1b}},{Slot:25b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:26b,Item:{id:"minecraft:oak_log",Count:1b}}]