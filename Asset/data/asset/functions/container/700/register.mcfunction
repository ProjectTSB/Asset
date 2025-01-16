#> asset:container/700/register
#
# コンテナの定義データ
#
# @within function asset:container/700/


execute unless loaded -36 21 -25 run return 1

# ID (int)
    data modify storage asset:container ID set value 700
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-36, 21, -25]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:coal",Count:1b}},{Slot:1b,Item:{id:"minecraft:coal",Count:1b}},{Slot:2b,Item:{id:"minecraft:coal",Count:1b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:4b,Item:{id:"minecraft:rotten_flesh",Count:1b}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:6b,Item:{id:"minecraft:coal",Count:1b}},{Slot:7b,Item:{id:"minecraft:coal",Count:1b}},{Slot:8b,Item:{id:"minecraft:coal",Count:1b}},{Slot:9b,Item:{id:"minecraft:coal",Count:1b}},{Slot:10b,Item:{id:"minecraft:cookie",Count:4b}},{Slot:11b,Item:{id:"minecraft:coal",Count:1b}},{Slot:12b,Item:{id:"minecraft:rotten_flesh",Count:1b}},{Slot:13b,Item:{id:"minecraft:spruce_sapling",Count:1b}},{Slot:14b,Item:{id:"minecraft:rotten_flesh",Count:1b}},{Slot:15b,Item:{id:"minecraft:coal",Count:1b}},{Slot:16b,Item:{id:"minecraft:cookie",Count:4b}},{Slot:17b,Item:{id:"minecraft:coal",Count:1b}},{Slot:18b,Item:{id:"minecraft:coal",Count:1b}},{Slot:19b,Item:{id:"minecraft:coal",Count:1b}},{Slot:20b,Item:{id:"minecraft:coal",Count:2b}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:22b,Item:{id:"minecraft:rotten_flesh",Count:1b}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:24b,Item:{id:"minecraft:coal",Count:2b}},{Slot:25b,Item:{id:"minecraft:coal",Count:1b}},{Slot:26b,Item:{id:"minecraft:coal",Count:1b}}]