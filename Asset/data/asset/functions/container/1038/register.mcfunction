#> asset:container/1038/register
#
# コンテナの定義データ
#
# @within function asset:container/1038/


execute unless loaded 154 108 267 run return 1

# ID (int)
    data modify storage asset:container ID set value 1038
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [154, 108, 267]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []