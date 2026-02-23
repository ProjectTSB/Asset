#> asset:container/2716/register
#
# コンテナの定義データ
#
# @within function asset:container/2716/


execute unless loaded -9 18 156 run return 1

# ID (int)
    data modify storage asset:container ID set value 2716
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-9, 18, 156]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:yellow_shulker_box[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:4b,Item:{id:"minecraft:honey_block",Count:1b}},{Slot:5b,Item:1116},{Slot:6b,Item:{id:"minecraft:honey_block",Count:1b}},{Slot:11b,Item:{id:"minecraft:honey_block",Count:1b}},{Slot:12b,Item:{id:"minecraft:honey_block",Count:1b}},{Slot:13b,Item:{id:"minecraft:honeycomb_block",Count:1b}},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:15b,Item:{id:"minecraft:honeycomb",Count:1b}},{Slot:16b,Item:{id:"minecraft:honeycomb_block",Count:1b}},{Slot:18b,Item:{id:"minecraft:honey_block",Count:1b}},{Slot:19b,Item:{id:"minecraft:honey_block",Count:1b}},{Slot:20b,Item:{id:"minecraft:honeycomb_block",Count:1b}},{Slot:21b,Item:{id:"minecraft:honeycomb_block",Count:1b}},{Slot:22b,Item:1116},{Slot:23b,Item:{id:"minecraft:honeycomb_block",Count:1b}},{Slot:24b,Item:1116},{Slot:25b,Item:{id:"minecraft:honeycomb_block",Count:1b}},{Slot:26b,Item:{id:"minecraft:honeycomb_block",Count:1b}}]