#> asset:container/18/register
#
# コンテナの定義データ
#
# @within function asset:container/18/


execute unless loaded -28 23 -11 run return 1

# ID (int)
    data modify storage asset:container ID set value 18
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-28, 23, -11]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:hopper[facing=west,type=null]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:chest",Count:4b,tag:{}}},{Slot:1b,Item:{id:"minecraft:chest",Count:4b,tag:{}}},{Slot:2b,Item:{id:"minecraft:item_frame",Count:8b,tag:{}}},{Slot:3b,Item:{id:"minecraft:chest",Count:4b,tag:{}}},{Slot:4b,Item:{id:"minecraft:chest",Count:4b,tag:{}}}]