#> asset:container/1259/register
#
# コンテナの定義データ
#
# @within function asset:container/1259/


execute unless loaded 90 132 1954 run return 1

# ID (int)
    data modify storage asset:container ID set value 1259
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [90, 132, 1954]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:1b,Item:1123},{Slot:2b,Item:1038},{Slot:3b,Item:1057},{Slot:4b,Item:361},{Slot:5b,Item:1059},{Slot:6b,Item:1040},{Slot:7b,Item:605},{Slot:12b,Item:609},{Slot:13b,Item:1056},{Slot:14b,Item:33},{Slot:19b,Item:1054},{Slot:20b,Item:1039},{Slot:21b,Item:1058},{Slot:22b,Item:431},{Slot:23b,Item:1060},{Slot:24b,Item:1041},{Slot:25b,Item:920}]