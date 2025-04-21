#> asset:container/725/register
#
# コンテナの定義データ
#
# @within function asset:container/725/


execute unless loaded -56 29 -159 run return 1

# ID (int)
    data modify storage asset:container ID set value 725
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-56, 29, -159]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=true,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:1b,Item:{id:"minecraft:packed_ice",Count:1b}},{Slot:2b,Item:{id:"minecraft:ice",Count:1b}},{Slot:3b,Item:{id:"minecraft:ice",Count:1b}},{Slot:4b,Item:{PresetItem:"currency/",Count:8b}},{Slot:5b,Item:{id:"minecraft:ice",Count:1b}},{Slot:6b,Item:{id:"minecraft:ice",Count:1b}},{Slot:7b,Item:{id:"minecraft:packed_ice",Count:1b}},{Slot:8b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:9b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:10b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:11b,Item:{id:"minecraft:packed_ice",Count:1b}},{Slot:12b,Item:{PresetItem:"currency/",Count:8b}},{Slot:13b,Item:322},{Slot:14b,Item:{PresetItem:"currency/",Count:8b}},{Slot:15b,Item:{id:"minecraft:packed_ice",Count:1b}},{Slot:16b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:17b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:18b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:19b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:20b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:21b,Item:{id:"minecraft:packed_ice",Count:1b}},{Slot:22b,Item:{PresetItem:"currency/",Count:8b}},{Slot:23b,Item:{id:"minecraft:packed_ice",Count:1b}},{Slot:24b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:25b,Item:{id:"minecraft:blue_ice",Count:1b}},{Slot:26b,Item:{id:"minecraft:blue_ice",Count:1b}}]