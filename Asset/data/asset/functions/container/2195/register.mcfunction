#> asset:container/2195/register
#
# コンテナの定義データ
#
# @within function asset:container/2195/


execute unless loaded -32 23 -20 run return 1

# ID (int)
    data modify storage asset:container ID set value 2195
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-32, 23, -20]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:hopper[facing=west]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:oak_log",Count:8b}},{Slot:1b,Item:{id:"minecraft:chest",Count:8b}},{Slot:2b,Item:{id:"minecraft:item_frame",Count:8b}},{Slot:3b,Item:{id:"minecraft:chest",Count:8b}},{Slot:4b,Item:{id:"minecraft:oak_log",Count:8b}}]