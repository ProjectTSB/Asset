#> asset:container/465/register
#
# コンテナの定義データ
#
# @within function asset:container/465/


execute unless loaded 220 150 -94 run return 1

# ID (int)
    data modify storage asset:container ID set value 465
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [220, 150, -94]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []