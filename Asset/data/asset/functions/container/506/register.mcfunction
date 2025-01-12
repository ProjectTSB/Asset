#> asset:container/506/register
#
# コンテナの定義データ
#
# @within function asset:container/506/


execute unless loaded -122 57 -19 run return 1

# ID (int)
    data modify storage asset:container ID set value 506
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-122, 57, -19]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []