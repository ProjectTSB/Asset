#> asset:container/1279/register
#
# コンテナの定義データ
#
# @within function asset:container/1279/


execute unless loaded 63 129 1953 run return 1

# ID (int)
    data modify storage asset:container ID set value 1279
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [63, 129, 1953]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:4b,Item:1111},{Slot:11b,Item:146},{Slot:15b,Item:146},{Slot:18b,Item:771},{Slot:26b,Item:771}]