#> asset:container/1908/register
#
# コンテナの定義データ
#
# @within function asset:container/1908/


execute unless loaded -113 -24 12 run return 1

# ID (int)
    data modify storage asset:container ID set value 1908
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-113, -24, 12]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:supplies/lv-2"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []