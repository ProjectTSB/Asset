#> asset:container/1290/register
#
# コンテナの定義データ
#
# @within function asset:container/1290/


execute unless loaded -174 265 186 run return 1

# ID (int)
    data modify storage asset:container ID set value 1290
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-174, 265, 186]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:1b,Item:{id:"minecraft:ice",Count:1b}},{Slot:2b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:3b,Item:{id:"minecraft:packed_ice",Count:1b}},{Slot:4b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:5b,Item:{id:"minecraft:packed_ice",Count:1b}},{Slot:6b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:7b,Item:{id:"minecraft:ice",Count:1b}},{Slot:8b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:9b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:10b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:11b,Item:{id:"minecraft:packed_ice",Count:1b}},{Slot:12b,Item:756},{Slot:13b,Item:{id:"minecraft:ice",Count:1b}},{Slot:14b,Item:736},{Slot:15b,Item:{id:"minecraft:packed_ice",Count:1b}},{Slot:16b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:17b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:18b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:19b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:20b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:21b,Item:{id:"minecraft:ice",Count:1b}},{Slot:22b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:23b,Item:{id:"minecraft:ice",Count:1b}},{Slot:24b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:25b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:26b,Item:{PresetItem:"currency/high",Count:1b}}]