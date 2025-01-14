#> asset:container/793/register
#
# コンテナの定義データ
#
# @within function asset:container/793/


execute unless loaded -78 30 1 run return 1

# ID (int)
    data modify storage asset:container ID set value 793
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-78, 30, 1]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:hanging_roots",Count:1b}},{Slot:1b,Item:{id:"minecraft:hanging_roots",Count:1b}},{Slot:2b,Item:{id:"minecraft:flowering_azalea_leaves",Count:2b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:4b,Item:{id:"minecraft:flowering_azalea_leaves",Count:2b}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:6b,Item:{id:"minecraft:flowering_azalea_leaves",Count:2b}},{Slot:7b,Item:{id:"minecraft:hanging_roots",Count:1b}},{Slot:8b,Item:{id:"minecraft:hanging_roots",Count:1b}},{Slot:9b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:10b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:11b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:12b,Item:{id:"minecraft:flowering_azalea_leaves",Count:2b}},{Slot:13b,Item:237},{Slot:14b,Item:{id:"minecraft:flowering_azalea_leaves",Count:2b}},{Slot:15b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:16b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:17b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:18b,Item:{id:"minecraft:moss_block",Count:1b}},{Slot:19b,Item:{id:"minecraft:torchflower",Count:1b}},{Slot:20b,Item:{id:"minecraft:moss_block",Count:1b}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:22b,Item:{id:"minecraft:flowering_azalea_leaves",Count:2b}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:24b,Item:{id:"minecraft:moss_block",Count:1b}},{Slot:25b,Item:{id:"minecraft:torchflower",Count:1b}},{Slot:26b,Item:{id:"minecraft:moss_block",Count:1b}}]