#> asset:container/2316/register
#
# コンテナの定義データ
#
# @within function asset:container/2316/


execute unless loaded 60 19 -50 run return 1

# ID (int)
    data modify storage asset:container ID set value 2316
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [60, 19, -50]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:1b,Item:{id:"minecraft:cod",Count:1b}},{Slot:3b,Item:{id:"minecraft:bamboo",Count:1b}},{Slot:5b,Item:{id:"minecraft:cooked_cod",Count:1b}},{Slot:6b,Item:{id:"minecraft:bamboo",Count:1b}},{Slot:7b,Item:{id:"minecraft:salmon",Count:1b}},{Slot:8b,Item:{id:"minecraft:cod",Count:1b}},{Slot:9b,Item:{id:"minecraft:salmon",Count:1b}},{Slot:12b,Item:{id:"minecraft:cooked_salmon",Count:1b}},{Slot:13b,Item:{id:"minecraft:bamboo",Count:1b}},{Slot:14b,Item:{id:"minecraft:cooked_cod",Count:1b}},{Slot:17b,Item:{id:"minecraft:cooked_cod",Count:1b}},{Slot:19b,Item:{id:"minecraft:bamboo",Count:1b}},{Slot:20b,Item:{id:"minecraft:cooked_cod",Count:1b}},{Slot:24b,Item:{id:"minecraft:cooked_salmon",Count:1b}},{Slot:26b,Item:{id:"minecraft:bamboo",Count:1b}}]