#> asset:container/453/register
#
# コンテナの定義データ
#
# @within function asset:container/453/


execute unless loaded 150 83 39 run return 1

# ID (int)
    data modify storage asset:container ID set value 453
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [150, 83, 39]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []