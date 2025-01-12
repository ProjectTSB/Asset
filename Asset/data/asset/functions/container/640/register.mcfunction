#> asset:container/640/register
#
# コンテナの定義データ
#
# @within function asset:container/640/


execute unless loaded -251 93 161 run return 1

# ID (int)
    data modify storage asset:container ID set value 640
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-251, 93, 161]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []