#> asset:container/1849/register
#
# コンテナの定義データ
#
# @within function asset:container/1849/


execute unless loaded 37 -6 263 run return 1

# ID (int)
    data modify storage asset:container ID set value 1849
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [37, -6, 263]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:supplies/lv-2"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []