#> asset:container/428/register
#
# コンテナの定義データ
#
# @within function asset:container/428/


execute unless loaded 415 92 161 run return 1

# ID (int)
    data modify storage asset:container ID set value 428
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [415, 92, 161]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []