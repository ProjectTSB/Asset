#> asset:container/16/register
#
# コンテナの定義データ
#
# @within function asset:container/16/


execute unless loaded 16 22 -32 run return 1

# ID (int)
    data modify storage asset:container ID set value 16
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [16, 22, -32]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:hopper[facing=east]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/",Count:5b}},{Slot:1b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:2b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:4b,Item:{PresetItem:"currency/",Count:5b}}]