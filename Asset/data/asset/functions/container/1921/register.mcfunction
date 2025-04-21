#> asset:container/1921/register
#
# コンテナの定義データ
#
# @within function asset:container/1921/


execute unless loaded -550 284 -7 run return 1

# ID (int)
    data modify storage asset:container ID set value 1921
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-550, 284, -7]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:supplies/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []