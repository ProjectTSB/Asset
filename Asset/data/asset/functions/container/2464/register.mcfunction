#> asset:container/2464/register
#
# コンテナの定義データ
#
# @within function asset:container/2464/


execute unless loaded 98 127 221 run return 1

# ID (int)
    data modify storage asset:container ID set value 2464
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [98, 127, 221]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=south]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:arrow",Count:14b}},{Slot:1b,Item:{id:"minecraft:arrow",Count:45b}},{Slot:2b,Item:{id:"minecraft:arrow",Count:45b}},{Slot:3b,Item:{id:"minecraft:arrow",Count:46b}},{Slot:4b,Item:{id:"minecraft:arrow",Count:23b}},{Slot:5b,Item:{id:"minecraft:arrow",Count:64b}},{Slot:6b,Item:{id:"minecraft:arrow",Count:31b}},{Slot:7b,Item:{id:"minecraft:arrow",Count:55b}},{Slot:8b,Item:{id:"minecraft:arrow",Count:11b}}]