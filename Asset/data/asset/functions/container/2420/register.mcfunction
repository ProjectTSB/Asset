#> asset:container/2420/register
#
# コンテナの定義データ
#
# @within function asset:container/2420/


execute unless loaded 213 130 -372 run return 1

# ID (int)
    data modify storage asset:container ID set value 2420
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [213, 130, -372]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=west]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:1b,Item:{id:"minecraft:book",Count:1b}},{Slot:2b,Item:{id:"minecraft:book",Count:1b}},{Slot:4b,Item:{id:"minecraft:paper",Count:1b}},{Slot:5b,Item:{id:"minecraft:paper",Count:1b}},{Slot:7b,Item:{id:"minecraft:paper",Count:1b}},{Slot:8b,Item:{id:"minecraft:book",Count:1b}},{Slot:9b,Item:{id:"minecraft:paper",Count:1b}},{Slot:10b,Item:{id:"minecraft:paper",Count:1b}},{Slot:13b,Item:{id:"minecraft:book",Count:1b}},{Slot:14b,Item:{id:"minecraft:book",Count:1b}},{Slot:16b,Item:{id:"minecraft:paper",Count:1b}},{Slot:17b,Item:{id:"minecraft:book",Count:1b}},{Slot:19b,Item:{id:"minecraft:book",Count:1b}},{Slot:20b,Item:{id:"minecraft:book",Count:1b}},{Slot:21b,Item:{id:"minecraft:paper",Count:1b}},{Slot:22b,Item:{id:"minecraft:book",Count:1b}},{Slot:23b,Item:{id:"minecraft:book",Count:1b}},{Slot:24b,Item:{id:"minecraft:paper",Count:1b}},{Slot:25b,Item:{id:"minecraft:paper",Count:1b}}]