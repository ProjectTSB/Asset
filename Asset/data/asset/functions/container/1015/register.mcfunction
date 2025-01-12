#> asset:container/1015/register
#
# コンテナの定義データ
#
# @within function asset:container/1015/


execute unless loaded 229 95 -268 run return 1

# ID (int)
    data modify storage asset:container ID set value 1015
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [229, 95, -268]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []