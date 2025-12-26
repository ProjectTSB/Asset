#> asset:container/2644/register
#
# コンテナの定義データ
#
# @within function asset:container/2644/


execute unless loaded -9 18 156 run return 1

# ID (int)
    data modify storage asset:container ID set value 2644
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-9, 18, 156]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:yellow_shulker_box[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:2b,Item:{id:"minecraft:honey_block",Count:1b}},{Slot:3b,Item:{id:"minecraft:honey_block",Count:1b}},{Slot:4b,Item:1116},{Slot:5b,Item:{id:"minecraft:honey_block",Count:1b}},{Slot:6b,Item:{id:"minecraft:honey_block",Count:1b}},{Slot:7b,Item:{id:"minecraft:honey_block",Count:1b}},{Slot:8b,Item:{id:"minecraft:honeycomb_block",Count:1b}},{Slot:10b,Item:{id:"minecraft:honey_block",Count:1b}},{Slot:11b,Item:{id:"minecraft:honeycomb",Count:1b}},{Slot:12b,Item:{id:"minecraft:honeycomb",Count:1b}},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:14b,Item:{id:"minecraft:honeycomb",Count:1b}},{Slot:15b,Item:{id:"minecraft:honeycomb",Count:1b}},{Slot:16b,Item:{id:"minecraft:honeycomb_block",Count:1b}},{Slot:18b,Item:{id:"minecraft:honey_block",Count:1b}},{Slot:19b,Item:{id:"minecraft:honeycomb_block",Count:1b}},{Slot:20b,Item:{id:"minecraft:honeycomb_block",Count:1b}},{Slot:21b,Item:1116},{Slot:22b,Item:{id:"minecraft:honeycomb_block",Count:1b}},{Slot:23b,Item:1116},{Slot:24b,Item:{id:"minecraft:honeycomb_block",Count:1b}}]