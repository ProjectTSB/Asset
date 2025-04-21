#> asset:container/1873/register
#
# コンテナの定義データ
#
# @within function asset:container/1873/


execute unless loaded 261 7 286 run return 1

# ID (int)
    data modify storage asset:container ID set value 1873
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [261, 7, 286]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:supplies/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []