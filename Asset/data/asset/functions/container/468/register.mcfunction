#> asset:container/468/register
#
# コンテナの定義データ
#
# @within function asset:container/468/


execute unless loaded 214 134 -68 run return 1

# ID (int)
    data modify storage asset:container ID set value 468
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [214, 134, -68]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []