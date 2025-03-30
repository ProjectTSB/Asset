#> asset:container/1875/register
#
# コンテナの定義データ
#
# @within function asset:container/1875/


execute unless loaded 259 7 39 run return 1

# ID (int)
    data modify storage asset:container ID set value 1875
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [259, 7, 39]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:supplies/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []