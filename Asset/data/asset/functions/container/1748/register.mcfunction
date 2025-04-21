#> asset:container/1748/register
#
# コンテナの定義データ
#
# @within function asset:container/1748/


execute unless loaded -93 120 268 run return 1

# ID (int)
    data modify storage asset:container ID set value 1748
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-93, 120, 268]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:3b,Item:144},{Slot:5b,Item:144},{Slot:11b,Item:145},{Slot:13b,Item:145},{Slot:15b,Item:145},{Slot:21b,Item:144},{Slot:23b,Item:144}]