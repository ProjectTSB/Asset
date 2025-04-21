#> asset:container/100/register
#
# コンテナの定義データ
#
# @within function asset:container/100/


execute unless loaded 77 18 -117 run return 1

# ID (int)
    data modify storage asset:container ID set value 100
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [77, 18, -117]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/",Count:4b}},{Slot:1b,Item:{PresetItem:"currency/",Count:4b}},{Slot:2b,Item:{PresetItem:"currency/",Count:4b}},{Slot:3b,Item:{id:"minecraft:rotten_flesh",Count:4b}},{Slot:4b,Item:{id:"minecraft:pufferfish",Count:1b}},{Slot:5b,Item:{id:"minecraft:spider_eye",Count:4b}},{Slot:6b,Item:{PresetItem:"currency/",Count:4b}},{Slot:7b,Item:{PresetItem:"currency/",Count:4b}},{Slot:8b,Item:{PresetItem:"currency/",Count:4b}},{Slot:9b,Item:{PresetItem:"currency/",Count:4b}},{Slot:10b,Item:617},{Slot:11b,Item:{PresetItem:"currency/",Count:4b}},{Slot:12b,Item:{id:"minecraft:poisonous_potato",Count:5b}},{Slot:13b,Item:105},{Slot:14b,Item:{id:"minecraft:fermented_spider_eye",Count:3b}},{Slot:15b,Item:{PresetItem:"currency/",Count:4b}},{Slot:16b,Item:617},{Slot:17b,Item:{PresetItem:"currency/",Count:4b}},{Slot:18b,Item:{PresetItem:"currency/",Count:4b}},{Slot:19b,Item:{PresetItem:"currency/",Count:4b}},{Slot:20b,Item:{PresetItem:"currency/",Count:4b}},{Slot:21b,Item:{id:"minecraft:blaze_powder",Count:1b}},{Slot:22b,Item:{id:"minecraft:beetroot_soup",Count:1b}},{Slot:23b,Item:{id:"minecraft:bone",Count:3b}},{Slot:24b,Item:{PresetItem:"currency/",Count:4b}},{Slot:25b,Item:{PresetItem:"currency/",Count:4b}},{Slot:26b,Item:{PresetItem:"currency/",Count:4b}}]