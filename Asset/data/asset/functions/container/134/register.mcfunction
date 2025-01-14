#> asset:container/134/register
#
# コンテナの定義データ
#
# @within function asset:container/134/


execute unless loaded 187 38 -38 run return 1

# ID (int)
    data modify storage asset:container ID set value 134
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [187, 38, -38]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=west]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:1b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:3b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:4b,Item:{PresetItem:"currency/",Count:16b}},{Slot:5b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:7b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}}]