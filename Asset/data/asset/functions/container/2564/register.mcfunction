#> asset:container/2564/register
#
# コンテナの定義データ
#
# @within function asset:container/2564/


execute unless loaded 106 201 -478 run return 1

# ID (int)
    data modify storage asset:container ID set value 2564
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [106, 201, -478]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=down]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:glow_berries",Count:16b}},{Slot:1b,Item:{PresetItem:"currency/high",Count:8b}},{Slot:2b,Item:{id:"minecraft:glow_berries",Count:16b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:4b,Item:253},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:6b,Item:{id:"minecraft:glow_berries",Count:16b}},{Slot:7b,Item:{PresetItem:"currency/high",Count:8b}},{Slot:8b,Item:{id:"minecraft:glow_berries",Count:16b}}]