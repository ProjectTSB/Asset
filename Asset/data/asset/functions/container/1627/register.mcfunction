#> asset:container/1627/register
#
# コンテナの定義データ
#
# @within function asset:container/1627/


execute unless loaded -146 73 154 run return 1

# ID (int)
    data modify storage asset:container ID set value 1627
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-146, 73, 154]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/",Count:16b}},{Slot:1b,Item:{id:"minecraft:iron_ingot",Count:1b}},{Slot:2b,Item:{id:"minecraft:iron_ingot",Count:1b}},{Slot:3b,Item:{id:"minecraft:honey_bottle",Count:1b}},{Slot:4b,Item:{id:"minecraft:honey_bottle",Count:1b}},{Slot:5b,Item:{id:"minecraft:honey_bottle",Count:1b}},{Slot:6b,Item:{id:"minecraft:gold_ingot",Count:1b}},{Slot:7b,Item:{id:"minecraft:gold_ingot",Count:1b}},{Slot:8b,Item:{PresetItem:"currency/",Count:16b}},{Slot:9b,Item:{id:"minecraft:copper_ingot",Count:1b}},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:11b,Item:{id:"minecraft:iron_ingot",Count:1b}},{Slot:12b,Item:{id:"minecraft:honey_bottle",Count:1b}},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:14b,Item:{id:"minecraft:honey_bottle",Count:1b}},{Slot:15b,Item:{id:"minecraft:gold_ingot",Count:1b}},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:17b,Item:{id:"minecraft:copper_ingot",Count:1b}},{Slot:18b,Item:{PresetItem:"currency/",Count:16b}},{Slot:19b,Item:{id:"minecraft:iron_ingot",Count:1b}},{Slot:20b,Item:{id:"minecraft:iron_ingot",Count:1b}},{Slot:21b,Item:{id:"minecraft:honey_bottle",Count:1b}},{Slot:22b,Item:{id:"minecraft:honey_bottle",Count:1b}},{Slot:23b,Item:{id:"minecraft:honey_bottle",Count:1b}},{Slot:24b,Item:{id:"minecraft:gold_ingot",Count:1b}},{Slot:25b,Item:{id:"minecraft:gold_ingot",Count:1b}},{Slot:26b,Item:{PresetItem:"currency/",Count:16b}}]