#> asset:container/2483/register
#
# コンテナの定義データ
#
# @within function asset:container/2483/


execute unless loaded 182 38 -43 run return 1

# ID (int)
    data modify storage asset:container ID set value 2483
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [182, 38, -43]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=south]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:1b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:3b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:5b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:7b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}}]