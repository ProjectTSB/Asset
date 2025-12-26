#> asset:container/2563/register
#
# コンテナの定義データ
#
# @within function asset:container/2563/


execute unless loaded 155 171 -388 run return 1

# ID (int)
    data modify storage asset:container ID set value 2563
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [155, 171, -388]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:apple",Count:16b}},{Slot:1b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:2b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:4b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:strong_poison"}}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:6b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:7b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:8b,Item:{id:"minecraft:apple",Count:16b}},{Slot:9b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:10b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:11b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:12b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:strong_poison"}}},{Slot:13b,Item:{id:"minecraft:apple",Count:64b}},{Slot:14b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:strong_poison"}}},{Slot:15b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:16b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:17b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:18b,Item:{id:"minecraft:apple",Count:16b}},{Slot:19b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:20b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:22b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:strong_poison"}}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:24b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:25b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:26b,Item:{id:"minecraft:apple",Count:16b}}]