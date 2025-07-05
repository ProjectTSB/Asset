#> asset:container/2326/register
#
# コンテナの定義データ
#
# @within function asset:container/2326/


execute unless loaded 200 10 -138 run return 1

# ID (int)
    data modify storage asset:container ID set value 2326
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [200, 10, -138]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-2",Count:2b}},{Slot:1b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-2",Count:2b}},{Slot:3b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:5b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-2",Count:2b}},{Slot:7b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-2",Count:2b}}]