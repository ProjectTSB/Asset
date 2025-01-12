#> asset:container/818/register
#
# コンテナの定義データ
#
# @within function asset:container/818/


execute unless loaded 227 132 -34 run return 1

# ID (int)
    data modify storage asset:container ID set value 818
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [227, 132, -34]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []