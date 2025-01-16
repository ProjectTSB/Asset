#> asset:container/1122/register
#
# コンテナの定義データ
#
# @within function asset:container/1122/


execute unless loaded 151 169 -391 run return 1

# ID (int)
    data modify storage asset:container ID set value 1122
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [151, 169, -391]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=down]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:1b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:2b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:3b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:4b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:5b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:6b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:7b,Item:{PresetItem:"currency/",Count:16b}},{Slot:8b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:9b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:10b,Item:{id:"minecraft:iron_block",Count:16b}},{Slot:11b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:12b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:13b,Item:573},{Slot:14b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:15b,Item:{PresetItem:"currency/",Count:16b}},{Slot:16b,Item:{id:"minecraft:iron_block",Count:16b}},{Slot:17b,Item:{PresetItem:"currency/",Count:16b}},{Slot:18b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:19b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:20b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:21b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:22b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:23b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:24b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:25b,Item:{PresetItem:"currency/",Count:16b}},{Slot:26b,Item:{id:"minecraft:ender_pearl",Count:1b}}]