#> asset:container/1954/register
#
# コンテナの定義データ
#
# @within function asset:container/1954/


execute unless loaded 177 139 -427 run return 1

# ID (int)
    data modify storage asset:container ID set value 1954
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [177, 139, -427]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:supplies/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []