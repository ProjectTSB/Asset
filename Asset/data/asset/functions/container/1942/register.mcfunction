#> asset:container/1942/register
#
# コンテナの定義データ
#
# @within function asset:container/1942/


execute unless loaded 557 37 260 run return 1

# ID (int)
    data modify storage asset:container ID set value 1942
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [557, 37, 260]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:supplies/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []