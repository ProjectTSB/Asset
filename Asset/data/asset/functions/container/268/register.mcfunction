#> asset:container/268/register
#
# コンテナの定義データ
#
# @within function asset:container/268/


execute unless loaded 65 7 219 run return 1

# ID (int)
    data modify storage asset:container ID set value 268
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [65, 7, 219]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []