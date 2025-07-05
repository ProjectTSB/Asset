#> asset:container/2423/register
#
# コンテナの定義データ
#
# @within function asset:container/2423/


execute unless loaded 20 3 -15 run return 1

# ID (int)
    data modify storage asset:container ID set value 2423
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [20, 3, -15]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:11b,Item:{id:"minecraft:sugar_cane",Count:1b}},{Slot:13b,Item:{id:"minecraft:map",Count:16b}},{Slot:15b,Item:{id:"minecraft:sugar_cane",Count:1b}}]