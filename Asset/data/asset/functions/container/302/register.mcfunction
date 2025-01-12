#> asset:container/302/register
#
# コンテナの定義データ
#
# @within function asset:container/302/


execute unless loaded -63 11 150 run return 1

# ID (int)
    data modify storage asset:container ID set value 302
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-63, 11, 150]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []