#> asset:container/878/register
#
# コンテナの定義データ
#
# @within function asset:container/878/


execute unless loaded -125 43 72 run return 1

# ID (int)
    data modify storage asset:container ID set value 878
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-125, 43, 72]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:1b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:2b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:3b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:4b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:5b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:6b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:7b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:8b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:9b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:13b,Item:247},{Slot:17b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:18b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:19b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:20b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:21b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:22b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:23b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:24b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:25b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:26b,Item:{id:"minecraft:white_wool",Count:64b}}]