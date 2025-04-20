#> asset:container/1980/register
#
# コンテナの定義データ
#
# @within function asset:container/1980/


execute unless loaded -21 25 -58 run return 1

# ID (int)
    data modify storage asset:container ID set value 1980
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-21, 25, -58]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=east]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:arrow",Count:2b}},{Slot:1b,Item:{id:"minecraft:arrow",Count:2b}},{Slot:2b,Item:{id:"minecraft:arrow",Count:2b}},{Slot:3b,Item:{id:"minecraft:arrow",Count:2b}},{Slot:4b,Item:{id:"minecraft:arrow",Count:16b}},{Slot:5b,Item:{id:"minecraft:arrow",Count:2b}},{Slot:6b,Item:{id:"minecraft:arrow",Count:2b}},{Slot:7b,Item:{id:"minecraft:arrow",Count:2b}},{Slot:8b,Item:{id:"minecraft:arrow",Count:2b}}]