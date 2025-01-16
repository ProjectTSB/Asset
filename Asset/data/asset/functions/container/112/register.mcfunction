#> asset:container/112/register
#
# コンテナの定義データ
#
# @within function asset:container/112/


execute unless loaded 155 14 -76 run return 1

# ID (int)
    data modify storage asset:container ID set value 112
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [155, 14, -76]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:1b,Item:{id:"minecraft:pumpkin_pie",Count:1b}},{Slot:3b,Item:{id:"minecraft:beetroot",Count:2b}},{Slot:5b,Item:{id:"minecraft:bread",Count:2b}},{Slot:7b,Item:{id:"minecraft:beetroot",Count:2b}},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:11b,Item:{PresetItem:"currency/",Count:8b}},{Slot:13b,Item:219},{Slot:15b,Item:{PresetItem:"currency/",Count:8b}},{Slot:18b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:19b,Item:{id:"minecraft:beetroot",Count:2b}},{Slot:21b,Item:{id:"minecraft:bread",Count:2b}},{Slot:23b,Item:{id:"minecraft:beetroot",Count:2b}},{Slot:25b,Item:{id:"minecraft:pumpkin_pie",Count:1b}},{Slot:26b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}}]