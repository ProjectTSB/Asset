#> asset:container/2665/register
#
# コンテナの定義データ
#
# @within function asset:container/2665/


execute unless loaded -91 20 224 run return 1

# ID (int)
    data modify storage asset:container ID set value 2665
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-91, 20, 224]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:3b,Item:{id:"minecraft:lapis_lazuli",Count:1b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:5b,Item:{id:"minecraft:lapis_lazuli",Count:1b}},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:8b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:10b,Item:{id:"minecraft:lapis_lazuli",Count:1b}},{Slot:11b,Item:{id:"minecraft:water_bucket",Count:1b}},{Slot:13b,Item:316},{Slot:15b,Item:{id:"minecraft:water_bucket",Count:1b}},{Slot:16b,Item:{id:"minecraft:lapis_lazuli",Count:1b}},{Slot:18b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:20b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:21b,Item:{id:"minecraft:lapis_lazuli",Count:1b}},{Slot:23b,Item:{id:"minecraft:lapis_lazuli",Count:1b}},{Slot:24b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:26b,Item:{PresetItem:"currency/high",Count:1b}}]