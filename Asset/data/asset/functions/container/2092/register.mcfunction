#> asset:container/2092/register
#
# コンテナの定義データ
#
# @within function asset:container/2092/


execute unless loaded -29 37 -1 run return 1

# ID (int)
    data modify storage asset:container ID set value 2092
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-29, 37, -1]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:1b,Item:{id:"minecraft:torch",Count:24b}},{Slot:2b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:3b,Item:{id:"minecraft:torch",Count:24b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:5b,Item:{id:"minecraft:torch",Count:24b}},{Slot:6b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:7b,Item:{id:"minecraft:torch",Count:24b}},{Slot:8b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:9b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:10b,Item:{PresetItem:"currency/",Count:1b}},{Slot:11b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:13b,Item:933},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:15b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:16b,Item:{PresetItem:"currency/",Count:1b}},{Slot:17b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:18b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:19b,Item:{id:"minecraft:torch",Count:24b}},{Slot:20b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:21b,Item:{id:"minecraft:torch",Count:24b}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:23b,Item:{id:"minecraft:torch",Count:24b}},{Slot:24b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:25b,Item:{id:"minecraft:torch",Count:24b}},{Slot:26b,Item:{PresetItem:"currency/high",Count:1b}}]