#> asset:container/1280/register
#
# コンテナの定義データ
#
# @within function asset:container/1280/


execute unless loaded 63 129 1954 run return 1

# ID (int)
    data modify storage asset:container ID set value 1280
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [63, 129, 1954]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:771},{Slot:8b,Item:771},{Slot:11b,Item:146},{Slot:15b,Item:146},{Slot:22b,Item:522}]