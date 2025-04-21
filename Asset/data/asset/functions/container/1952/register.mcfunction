#> asset:container/1952/register
#
# コンテナの定義データ
#
# @within function asset:container/1952/


execute unless loaded 230 92 -112 run return 1

# ID (int)
    data modify storage asset:container ID set value 1952
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [230, 92, -112]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:supplies/lv-2"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []