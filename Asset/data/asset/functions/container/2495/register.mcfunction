#> asset:container/2495/register
#
# コンテナの定義データ
#
# @within function asset:container/2495/


execute unless loaded 149 82 39 run return 1

# ID (int)
    data modify storage asset:container ID set value 2495
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [149, 82, 39]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:771},{Slot:1b,Item:771},{Slot:2b,Item:771},{Slot:3b,Item:771},{Slot:4b,Item:771},{Slot:5b,Item:771},{Slot:6b,Item:771},{Slot:7b,Item:771},{Slot:8b,Item:771}]