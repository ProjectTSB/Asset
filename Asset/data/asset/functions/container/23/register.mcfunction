#> asset:container/23/register
#
# コンテナの定義データ
#
# @within function asset:container/23/


execute unless loaded 30 15 -31 run return 1

# ID (int)
    data modify storage asset:container ID set value 23
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [30, 15, -31]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:hopper[facing=south]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:2b,Item:{id:"minecraft:tnt",Count:1b}}]