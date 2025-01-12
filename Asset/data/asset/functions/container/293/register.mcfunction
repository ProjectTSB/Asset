#> asset:container/293/register
#
# コンテナの定義データ
#
# @within function asset:container/293/


execute unless loaded 10 40 -379 run return 1

# ID (int)
    data modify storage asset:container ID set value 293
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [10, 40, -379]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=true,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []