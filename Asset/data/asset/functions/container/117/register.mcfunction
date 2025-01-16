#> asset:container/117/register
#
# コンテナの定義データ
#
# @within function asset:container/117/


execute unless loaded 44 25 212 run return 1

# ID (int)
    data modify storage asset:container ID set value 117
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [44, 25, 212]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/",Count:1b}},{Slot:1b,Item:{PresetItem:"currency/",Count:1b}},{Slot:2b,Item:{PresetItem:"currency/",Count:1b}},{Slot:4b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:6b,Item:{PresetItem:"currency/",Count:1b}},{Slot:7b,Item:{PresetItem:"currency/",Count:1b}},{Slot:8b,Item:{PresetItem:"currency/",Count:1b}},{Slot:9b,Item:{PresetItem:"currency/",Count:1b}},{Slot:10b,Item:{PresetItem:"currency/",Count:1b}},{Slot:11b,Item:{PresetItem:"currency/",Count:1b}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:13b,Item:{id:"minecraft:spruce_sapling",Count:1b}},{Slot:14b,Item:278},{Slot:15b,Item:{PresetItem:"currency/",Count:1b}},{Slot:16b,Item:{PresetItem:"currency/",Count:1b}},{Slot:17b,Item:{PresetItem:"currency/",Count:1b}},{Slot:18b,Item:{PresetItem:"currency/",Count:1b}},{Slot:19b,Item:{PresetItem:"currency/",Count:1b}},{Slot:20b,Item:{PresetItem:"currency/",Count:1b}},{Slot:22b,Item:{id:"minecraft:flower_pot",Count:1b}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:24b,Item:{PresetItem:"currency/",Count:1b}},{Slot:25b,Item:{PresetItem:"currency/",Count:1b}},{Slot:26b,Item:{PresetItem:"currency/",Count:1b}}]