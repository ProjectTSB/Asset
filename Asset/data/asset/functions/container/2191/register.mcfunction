#> asset:container/2191/register
#
# コンテナの定義データ
#
# @within function asset:container/2191/


execute unless loaded 13 135 409 run return 1

# ID (int)
    data modify storage asset:container ID set value 2191
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [13, 135, 409]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:1b,Item:{id:"minecraft:white_wool",Count:32b}},{Slot:3b,Item:{id:"minecraft:torch",Count:16b}},{Slot:5b,Item:{id:"minecraft:torch",Count:16b}},{Slot:7b,Item:{id:"minecraft:white_wool",Count:32b}},{Slot:9b,Item:{id:"minecraft:white_wool",Count:32b}},{Slot:11b,Item:145},{Slot:13b,Item:145},{Slot:15b,Item:145},{Slot:17b,Item:{id:"minecraft:white_wool",Count:32b}},{Slot:19b,Item:{id:"minecraft:white_wool",Count:32b}},{Slot:21b,Item:{id:"minecraft:torch",Count:16b}},{Slot:23b,Item:{id:"minecraft:torch",Count:16b}},{Slot:25b,Item:{id:"minecraft:white_wool",Count:32b}}]