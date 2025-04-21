#> asset:container/1958/register
#
# コンテナの定義データ
#
# @within function asset:container/1958/


execute unless loaded 110 -4 309 run return 1

# ID (int)
    data modify storage asset:container ID set value 1958
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [110, -4, 309]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:supplies/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []