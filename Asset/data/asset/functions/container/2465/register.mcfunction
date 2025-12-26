#> asset:container/2465/register
#
# コンテナの定義データ
#
# @within function asset:container/2465/


execute unless loaded -93 120 268 run return 1

# ID (int)
    data modify storage asset:container ID set value 2465
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-93, 120, 268]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:supplies/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []