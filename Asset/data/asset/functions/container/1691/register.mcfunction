#> asset:container/1691/register
#
# コンテナの定義データ
#
# @within function asset:container/1691/


execute unless loaded 97 127 221 run return 1

# ID (int)
    data modify storage asset:container ID set value 1691
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [97, 127, 221]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:furnace[facing=east]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:oak_log",Count:56b}},{Slot:2b,Item:{id:"minecraft:charcoal",Count:8b}}]