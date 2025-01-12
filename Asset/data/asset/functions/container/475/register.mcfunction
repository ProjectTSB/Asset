#> asset:container/475/register
#
# コンテナの定義データ
#
# @within function asset:container/475/


execute unless loaded 154 80 36 run return 1

# ID (int)
    data modify storage asset:container ID set value 475
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [154, 80, 36]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []