#> asset:container/267/register
#
# コンテナの定義データ
#
# @within function asset:container/267/


execute unless loaded 65 7 220 run return 1

# ID (int)
    data modify storage asset:container ID set value 267
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [65, 7, 220]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []