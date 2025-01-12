#> asset:container/830/register
#
# コンテナの定義データ
#
# @within function asset:container/830/


execute unless loaded 296 41 -75 run return 1

# ID (int)
    data modify storage asset:container ID set value 830
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [296, 41, -75]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:1b,Item:615},{Slot:7b,Item:290}]