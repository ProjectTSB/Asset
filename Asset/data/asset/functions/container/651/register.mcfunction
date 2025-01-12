#> asset:container/651/register
#
# コンテナの定義データ
#
# @within function asset:container/651/


execute unless loaded -73 78 -54 run return 1

# ID (int)
    data modify storage asset:container ID set value 651
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-73, 78, -54]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []