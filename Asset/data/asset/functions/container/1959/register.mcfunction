#> asset:container/1959/register
#
# コンテナの定義データ
#
# @within function asset:container/1959/


execute unless loaded 98 127 221 run return 1

# ID (int)
    data modify storage asset:container ID set value 1959
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [98, 127, 221]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=south]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:arrow",Count:53b}},{Slot:1b,Item:{id:"minecraft:arrow",Count:8b}},{Slot:2b,Item:{id:"minecraft:arrow",Count:64b}},{Slot:3b,Item:{id:"minecraft:arrow",Count:25b}},{Slot:4b,Item:{id:"minecraft:arrow",Count:15b}},{Slot:5b,Item:{id:"minecraft:arrow",Count:25b}},{Slot:6b,Item:{id:"minecraft:arrow",Count:25b}},{Slot:7b,Item:{id:"minecraft:arrow",Count:37b}},{Slot:8b,Item:{id:"minecraft:arrow",Count:25b}}]