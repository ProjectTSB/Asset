#> asset:container/2399/register
#
# コンテナの定義データ
#
# @within function asset:container/2399/


execute unless loaded 95 243 -569 run return 1

# ID (int)
    data modify storage asset:container ID set value 2399
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [95, 243, -569]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:cake",Count:1b}},{Slot:1b,Item:{id:"minecraft:rabbit_stew",Count:1b}},{Slot:2b,Item:1106},{Slot:3b,Item:{id:"minecraft:cooked_beef",Count:8b}},{Slot:4b,Item:{id:"minecraft:golden_carrot",Count:8b}},{Slot:5b,Item:{id:"minecraft:cooked_beef",Count:8b}},{Slot:6b,Item:1106},{Slot:7b,Item:{id:"minecraft:rabbit_stew",Count:1b}},{Slot:8b,Item:{id:"minecraft:cake",Count:1b}},{Slot:9b,Item:{id:"minecraft:rabbit_stew",Count:1b}},{Slot:10b,Item:1106},{Slot:11b,Item:{id:"minecraft:cooked_beef",Count:8b}},{Slot:12b,Item:{id:"minecraft:golden_carrot",Count:8b}},{Slot:13b,Item:217},{Slot:14b,Item:{id:"minecraft:golden_carrot",Count:8b}},{Slot:15b,Item:{id:"minecraft:cooked_beef",Count:8b}},{Slot:16b,Item:1106},{Slot:17b,Item:{id:"minecraft:rabbit_stew",Count:1b}},{Slot:18b,Item:{id:"minecraft:cake",Count:1b}},{Slot:19b,Item:{id:"minecraft:rabbit_stew",Count:1b}},{Slot:20b,Item:1106},{Slot:21b,Item:{id:"minecraft:cooked_beef",Count:8b}},{Slot:22b,Item:{id:"minecraft:golden_carrot",Count:8b}},{Slot:23b,Item:{id:"minecraft:cooked_beef",Count:8b}},{Slot:24b,Item:1106},{Slot:25b,Item:{id:"minecraft:rabbit_stew",Count:1b}},{Slot:26b,Item:{id:"minecraft:cake",Count:1b}}]