#> asset:container/84/register
#
# コンテナの定義データ
#
# @within function asset:container/84/


execute unless loaded 7 21 -75 run return 1

# ID (int)
    data modify storage asset:container ID set value 84
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [7, 21, -75]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:1b,Item:{PresetItem:"currency/",Count:1b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:7b,Item:{PresetItem:"currency/",Count:1b}},{Slot:9b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:11b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:15b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:17b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:19b,Item:{PresetItem:"currency/",Count:1b}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:25b,Item:{PresetItem:"currency/",Count:1b}}]