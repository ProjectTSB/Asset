#> asset:container/1948/register
#
# コンテナの定義データ
#
# @within function asset:container/1948/


execute unless loaded 564 188 -229 run return 1

# ID (int)
    data modify storage asset:container ID set value 1948
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [564, 188, -229]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:supplies/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []