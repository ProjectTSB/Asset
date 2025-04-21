#> asset:container/1943/register
#
# コンテナの定義データ
#
# @within function asset:container/1943/


execute unless loaded 256 7 -302 run return 1

# ID (int)
    data modify storage asset:container ID set value 1943
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [256, 7, -302]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:supplies/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []