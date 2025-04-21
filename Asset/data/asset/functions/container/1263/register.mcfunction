#> asset:container/1263/register
#
# コンテナの定義データ
#
# @within function asset:container/1263/


execute unless loaded 77 119 1961 run return 1

# ID (int)
    data modify storage asset:container ID set value 1263
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [77, 119, 1961]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:3b,Item:554},{Slot:5b,Item:556},{Slot:13b,Item:8},{Slot:21b,Item:555},{Slot:23b,Item:557}]