#> asset:container/2448/register
#
# コンテナの定義データ
#
# @within function asset:container/2448/


execute unless loaded 127 42 -192 run return 1

# ID (int)
    data modify storage asset:container ID set value 2448
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [127, 42, -192]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:jungle_sapling",Count:1b}},{Slot:1b,Item:{id:"minecraft:tnt",Count:2b}},{Slot:2b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:3b,Item:{id:"minecraft:gunpowder",Count:9b}},{Slot:4b,Item:{id:"minecraft:gunpowder",Count:9b}},{Slot:5b,Item:{id:"minecraft:gunpowder",Count:9b}},{Slot:6b,Item:{id:"minecraft:bread",Count:9b}},{Slot:7b,Item:{id:"minecraft:tnt",Count:2b}},{Slot:8b,Item:{id:"minecraft:tnt",Count:2b}},{Slot:9b,Item:{id:"minecraft:tnt",Count:2b}},{Slot:10b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:11b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:12b,Item:{id:"minecraft:gunpowder",Count:9b}},{Slot:13b,Item:78},{Slot:14b,Item:{id:"minecraft:gunpowder",Count:9b}},{Slot:15b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:16b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:17b,Item:{id:"minecraft:tnt",Count:2b}},{Slot:18b,Item:{id:"minecraft:tnt",Count:2b}},{Slot:19b,Item:{id:"minecraft:tnt",Count:2b}},{Slot:20b,Item:{id:"minecraft:bread",Count:9b}},{Slot:21b,Item:{id:"minecraft:gunpowder",Count:9b}},{Slot:22b,Item:{id:"minecraft:gunpowder",Count:9b}},{Slot:23b,Item:{id:"minecraft:gunpowder",Count:9b}},{Slot:24b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:25b,Item:{id:"minecraft:tnt",Count:2b}},{Slot:26b,Item:{id:"minecraft:oak_sapling",Count:1b}}]