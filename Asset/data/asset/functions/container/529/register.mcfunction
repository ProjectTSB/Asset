#> asset:container/529/register
#
# コンテナの定義データ
#
# @within function asset:container/529/


execute unless loaded -66 13 53 run return 1

# ID (int)
    data modify storage asset:container ID set value 529
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-66, 13, 53]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []