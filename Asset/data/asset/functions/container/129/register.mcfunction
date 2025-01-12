#> asset:container/129/register
#
# コンテナの定義データ
#
# @within function asset:container/129/


execute unless loaded 3438 115 -460 run return 1

# ID (int)
    data modify storage asset:container ID set value 129
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [3438, 115, -460]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:13b,Item:17}]