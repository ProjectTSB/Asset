#> asset:container/2679/register
#
# コンテナの定義データ
#
# @within function asset:container/2679/


execute unless loaded -190 109 391 run return 1

# ID (int)
    data modify storage asset:container ID set value 2679
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-190, 109, 391]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:2b,Item:{id:"minecraft:compass",Count:1b}},{Slot:3b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:5b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:6b,Item:{id:"minecraft:compass",Count:1b}},{Slot:9b,Item:515},{Slot:10b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:11b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:13b,Item:{id:"minecraft:recovery_compass",Count:1b}},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:15b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:16b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:17b,Item:515},{Slot:20b,Item:{id:"minecraft:compass",Count:1b}},{Slot:21b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:23b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:24b,Item:{id:"minecraft:compass",Count:1b}}]