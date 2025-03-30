#> asset:container/1665/register
#
# コンテナの定義データ
#
# @within function asset:container/1665/


execute unless loaded 278 132 124 run return 1

# ID (int)
    data modify storage asset:container ID set value 1665
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [278, 132, 124]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:1b,Item:{PresetItem:"currency/",Count:1b}},{Slot:2b,Item:{PresetItem:"currency/",Count:1b}},{Slot:3b,Item:{PresetItem:"currency/",Count:1b}},{Slot:7b,Item:{PresetItem:"currency/",Count:1b}},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:12b,Item:{PresetItem:"currency/",Count:1b}},{Slot:13b,Item:1193},{Slot:16b,Item:{PresetItem:"currency/",Count:1b}},{Slot:18b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:21b,Item:{PresetItem:"currency/",Count:1b}},{Slot:25b,Item:{PresetItem:"currency/",Count:1b}},{Slot:26b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}}]