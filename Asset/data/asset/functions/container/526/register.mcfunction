#> asset:container/526/register
#
# コンテナの定義データ
#
# @within function asset:container/526/


execute unless loaded -67 13 45 run return 1

# ID (int)
    data modify storage asset:container ID set value 526
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-67, 13, 45]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []