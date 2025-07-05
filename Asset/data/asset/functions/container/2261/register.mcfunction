#> asset:container/2261/register
#
# コンテナの定義データ
#
# @within function asset:container/2261/


execute unless loaded 77 -4 35 run return 1

# ID (int)
    data modify storage asset:container ID set value 2261
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [77, -4, 35]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/",Count:2b}},{Slot:2b,Item:90},{Slot:4b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:6b,Item:90},{Slot:8b,Item:{PresetItem:"currency/",Count:2b}},{Slot:10b,Item:958},{Slot:12b,Item:{id:"minecraft:wooden_axe",Count:1b,tag:{"Damage":0}}},{Slot:14b,Item:{id:"minecraft:wooden_sword",Count:1b,tag:{"Damage":0}}},{Slot:16b,Item:958},{Slot:18b,Item:90},{Slot:20b,Item:{PresetItem:"currency/",Count:2b}},{Slot:22b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:24b,Item:{PresetItem:"currency/",Count:2b}},{Slot:26b,Item:90}]