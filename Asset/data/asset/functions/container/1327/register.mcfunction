#> asset:container/1327/register
#
# コンテナの定義データ
#
# @within function asset:container/1327/


execute unless loaded 32 77 342 run return 1

# ID (int)
    data modify storage asset:container ID set value 1327
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [32, 77, 342]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:1b,Item:501},{Slot:2b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:3b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:4b,Item:501},{Slot:5b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:6b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:7b,Item:501},{Slot:8b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:9b,Item:501},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:11b,Item:501},{Slot:12b,Item:501},{Slot:13b,Item:462},{Slot:14b,Item:501},{Slot:15b,Item:501},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:17b,Item:501},{Slot:18b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:19b,Item:501},{Slot:20b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:21b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:22b,Item:501},{Slot:23b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:24b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:25b,Item:501},{Slot:26b,Item:{PresetItem:"currency/high",Count:1b}}]