#> asset:container/1977/register
#
# コンテナの定義データ
#
# @within function asset:container/1977/


execute unless loaded 41 1 24 run return 1

# ID (int)
    data modify storage asset:container ID set value 1977
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [41, 1, 24]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:oak_planks",Count:8b}},{Slot:1b,Item:{id:"minecraft:dark_oak_planks",Count:8b}},{Slot:2b,Item:{id:"minecraft:oak_planks",Count:8b}},{Slot:3b,Item:{id:"minecraft:bread",Count:4b}},{Slot:4b,Item:{id:"minecraft:arrow",Count:4b}},{Slot:5b,Item:{id:"minecraft:bread",Count:4b}},{Slot:6b,Item:{id:"minecraft:oak_planks",Count:8b}},{Slot:7b,Item:{id:"minecraft:dark_oak_planks",Count:8b}},{Slot:8b,Item:{id:"minecraft:oak_planks",Count:8b}},{Slot:9b,Item:{id:"minecraft:dark_oak_planks",Count:8b}},{Slot:10b,Item:{id:"minecraft:oak_planks",Count:8b}},{Slot:11b,Item:{id:"minecraft:dark_oak_planks",Count:8b}},{Slot:12b,Item:{id:"minecraft:arrow",Count:4b}},{Slot:13b,Item:{id:"minecraft:iron_pickaxe",Count:1b,tag:{"Damage":0}}},{Slot:14b,Item:{id:"minecraft:arrow",Count:4b}},{Slot:15b,Item:{id:"minecraft:dark_oak_planks",Count:8b}},{Slot:16b,Item:{id:"minecraft:oak_planks",Count:6b}},{Slot:17b,Item:{id:"minecraft:dark_oak_planks",Count:8b}},{Slot:18b,Item:{id:"minecraft:oak_planks",Count:8b}},{Slot:19b,Item:{id:"minecraft:dark_oak_planks",Count:8b}},{Slot:20b,Item:{id:"minecraft:oak_planks",Count:8b}},{Slot:21b,Item:{id:"minecraft:bread",Count:4b}},{Slot:22b,Item:{id:"minecraft:arrow",Count:4b}},{Slot:23b,Item:{id:"minecraft:bread",Count:4b}},{Slot:24b,Item:{id:"minecraft:oak_planks",Count:8b}},{Slot:25b,Item:{id:"minecraft:dark_oak_planks",Count:8b}},{Slot:26b,Item:{id:"minecraft:oak_planks",Count:8b}}]