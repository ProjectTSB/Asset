#> asset:container/883/register
#
# コンテナの定義データ
#
# @within function asset:container/883/


execute unless loaded -30 2 102 run return 1

# ID (int)
    data modify storage asset:container ID set value 883
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-30, 2, 102]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []