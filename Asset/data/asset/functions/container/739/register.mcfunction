#> asset:container/739/register
#
# コンテナの定義データ
#
# @within function asset:container/739/


execute unless loaded 47 39 360 run return 1

# ID (int)
    data modify storage asset:container ID set value 739
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [47, 39, 360]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []