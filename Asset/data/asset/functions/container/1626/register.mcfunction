#> asset:container/1626/register
#
# コンテナの定義データ
#
# @within function asset:container/1626/


execute unless loaded -129 73 133 run return 1

# ID (int)
    data modify storage asset:container ID set value 1626
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-129, 73, 133]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=south]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:honey_block",Count:5b}},{Slot:2b,Item:{id:"minecraft:honey_block",Count:1b}},{Slot:3b,Item:{id:"minecraft:honeycomb",Count:1b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:6b,Item:{id:"minecraft:honey_block",Count:1b}},{Slot:7b,Item:{id:"minecraft:honeycomb",Count:1b}},{Slot:9b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:10b,Item:{id:"minecraft:honeycomb",Count:2b}},{Slot:13b,Item:{id:"minecraft:honeycomb",Count:1b}},{Slot:14b,Item:{id:"minecraft:honeycomb",Count:2b}},{Slot:15b,Item:{id:"minecraft:honey_block",Count:2b}},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:17b,Item:{id:"minecraft:honey_block",Count:2b}},{Slot:18b,Item:{id:"minecraft:honeycomb",Count:3b}},{Slot:20b,Item:{id:"minecraft:honeycomb",Count:1b}},{Slot:21b,Item:{id:"minecraft:honey_block",Count:2b}},{Slot:22b,Item:{id:"minecraft:honey_block",Count:3b}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-3",Count:3b}},{Slot:25b,Item:{id:"minecraft:honeycomb",Count:2b}},{Slot:26b,Item:{id:"minecraft:honey_block",Count:1b}}]