#> asset:container/1960/register
#
# コンテナの定義データ
#
# @within function asset:container/1960/


execute unless loaded 87 11 -61 run return 1

# ID (int)
    data modify storage asset:container ID set value 1960
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [87, 11, -61]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:supplies/lv-1"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []