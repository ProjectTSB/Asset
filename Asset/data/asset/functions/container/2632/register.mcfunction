#> asset:container/2632/register
#
# コンテナの定義データ
#
# @within function asset:container/2632/


execute unless loaded 90 132 1954 run return 1

# ID (int)
    data modify storage asset:container ID set value 2632
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [90, 132, 1954]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:2b,Item:1038},{Slot:6b,Item:1057},{Slot:10b,Item:1123},{Slot:12b,Item:431},{Slot:13b,Item:1056},{Slot:14b,Item:605},{Slot:16b,Item:1054},{Slot:20b,Item:1041},{Slot:24b,Item:1060}]