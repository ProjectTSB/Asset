#> asset:container/2010/register
#
# コンテナの定義データ
#
# @within function asset:container/2010/


execute unless loaded -59 74 -299 run return 1

# ID (int)
    data modify storage asset:container ID set value 2010
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-59, 74, -299]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=south]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:cod_bucket",Count:1b}},{Slot:1b,Item:{id:"minecraft:water_bucket",Count:1b}},{Slot:2b,Item:{id:"minecraft:water_bucket",Count:1b}},{Slot:3b,Item:{id:"minecraft:water_bucket",Count:1b}},{Slot:4b,Item:979},{Slot:5b,Item:{id:"minecraft:water_bucket",Count:1b}},{Slot:6b,Item:{id:"minecraft:water_bucket",Count:1b}},{Slot:7b,Item:{id:"minecraft:water_bucket",Count:1b}},{Slot:8b,Item:{id:"minecraft:water_bucket",Count:1b}}]