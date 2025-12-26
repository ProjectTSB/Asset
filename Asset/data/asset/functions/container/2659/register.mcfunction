#> asset:container/2659/register
#
# コンテナの定義データ
#
# @within function asset:container/2659/


execute unless loaded 223 11 -66 run return 1

# ID (int)
    data modify storage asset:container ID set value 2659
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [223, 11, -66]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:ender_pearl",Count:3b}},{Slot:1b,Item:{id:"minecraft:ender_pearl",Count:2b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:3b,Item:{id:"minecraft:gold_ingot",Count:5b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:5b,Item:{id:"minecraft:gold_ingot",Count:5b}},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:7b,Item:{id:"minecraft:ender_pearl",Count:2b}},{Slot:8b,Item:{id:"minecraft:ender_pearl",Count:3b}},{Slot:9b,Item:{id:"minecraft:ender_pearl",Count:2b}},{Slot:10b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:11b,Item:{id:"minecraft:gold_ingot",Count:5b}},{Slot:12b,Item:{PresetItem:"currency/",Count:5b}},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-1",Count:3b}},{Slot:14b,Item:{PresetItem:"currency/",Count:5b}},{Slot:15b,Item:{id:"minecraft:gold_ingot",Count:5b}},{Slot:16b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:17b,Item:{id:"minecraft:ender_pearl",Count:2b}},{Slot:18b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:19b,Item:{id:"minecraft:gold_ingot",Count:5b}},{Slot:20b,Item:{PresetItem:"currency/",Count:5b}},{Slot:21b,Item:{PresetItem:"currency/",Count:6b}},{Slot:22b,Item:288},{Slot:23b,Item:{PresetItem:"currency/",Count:6b}},{Slot:24b,Item:{PresetItem:"currency/",Count:5b}},{Slot:25b,Item:{id:"minecraft:gold_ingot",Count:5b}},{Slot:26b,Item:{PresetItem:"currency/high",Count:1b}}]