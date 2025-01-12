#> asset:container/469/register
#
# コンテナの定義データ
#
# @within function asset:container/469/


execute unless loaded 218 152 -50 run return 1

# ID (int)
    data modify storage asset:container ID set value 469
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [218, 152, -50]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []