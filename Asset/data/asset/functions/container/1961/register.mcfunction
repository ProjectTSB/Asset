#> asset:container/1961/register
#
# コンテナの定義データ
#
# @within function asset:container/1961/


execute unless loaded 29 17 -149 run return 1

# ID (int)
    data modify storage asset:container ID set value 1961
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [29, 17, -149]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:supplies/lv-2"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []