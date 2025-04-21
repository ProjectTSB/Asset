#> asset:container/2150/register
#
# コンテナの定義データ
#
# @within function asset:container/2150/


execute unless loaded -162 147 -350 run return 1

# ID (int)
    data modify storage asset:container ID set value 2150
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-162, 147, -350]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=down]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:1b,Item:{id:"minecraft:diamond_block",Count:1b}},{Slot:2b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:3b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:4b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:5b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:6b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:7b,Item:{id:"minecraft:diamond_block",Count:1b}},{Slot:8b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:9b,Item:{id:"minecraft:diamond_block",Count:1b}},{Slot:10b,Item:{id:"minecraft:netherite_upgrade_smithing_template",Count:1b}},{Slot:11b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:12b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:13b,Item:{id:"minecraft:netherite_ingot",Count:1b}},{Slot:14b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:15b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:16b,Item:{id:"minecraft:netherite_upgrade_smithing_template",Count:1b}},{Slot:17b,Item:{id:"minecraft:diamond_block",Count:1b}},{Slot:18b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:19b,Item:{id:"minecraft:diamond_block",Count:1b}},{Slot:20b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:21b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:22b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:23b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:24b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:25b,Item:{id:"minecraft:diamond_block",Count:1b}},{Slot:26b,Item:{PresetItem:"currency/high",Count:1b}}]