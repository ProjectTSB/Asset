#> asset:container/2275/register
#
# コンテナの定義データ
#
# @within function asset:container/2275/


execute unless loaded 164 92 279 run return 1

# ID (int)
    data modify storage asset:container ID set value 2275
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [164, 92, 279]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:1b,Item:{id:"minecraft:soul_lantern",Count:1b}},{Slot:3b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:4b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:5b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:7b,Item:{id:"minecraft:soul_lantern",Count:1b}},{Slot:11b,Item:{id:"minecraft:soul_torch",Count:16b}},{Slot:12b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:13b,Item:559},{Slot:14b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:15b,Item:{id:"minecraft:soul_torch",Count:16b}},{Slot:18b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:19b,Item:{id:"minecraft:crying_obsidian",Count:4b}},{Slot:20b,Item:{id:"minecraft:magma_block",Count:6b}},{Slot:21b,Item:{id:"minecraft:gold_block",Count:2b}},{Slot:22b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:23b,Item:{id:"minecraft:gold_block",Count:2b}},{Slot:24b,Item:{id:"minecraft:magma_block",Count:6b}},{Slot:25b,Item:{id:"minecraft:crying_obsidian",Count:4b}},{Slot:26b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}}]