#> asset:container/1668/register
#
# コンテナの定義データ
#
# @within function asset:container/1668/


execute unless loaded 287 58 225 run return 1

# ID (int)
    data modify storage asset:container ID set value 1668
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [287, 58, 225]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:iron_ingot",Count:1b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:8b,Item:{id:"minecraft:iron_ingot",Count:1b}},{Slot:11b,Item:{PresetItem:"currency/",Count:1b}},{Slot:12b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:13b,Item:1207},{Slot:14b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:15b,Item:{PresetItem:"currency/",Count:1b}},{Slot:18b,Item:{id:"minecraft:iron_ingot",Count:1b}},{Slot:19b,Item:{PresetItem:"currency/",Count:1b}},{Slot:20b,Item:{PresetItem:"currency/",Count:1b}},{Slot:21b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:22b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:23b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:24b,Item:{PresetItem:"currency/",Count:1b}},{Slot:25b,Item:{PresetItem:"currency/",Count:1b}},{Slot:26b,Item:{id:"minecraft:iron_ingot",Count:1b}}]