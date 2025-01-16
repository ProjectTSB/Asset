#> asset:container/17/register
#
# コンテナの定義データ
#
# @within function asset:container/17/


execute unless loaded 11 20 -51 run return 1

# ID (int)
    data modify storage asset:container ID set value 17
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [11, 20, -51]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=east]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:13b,Item:{id:"minecraft:apple",Count:16b}}]