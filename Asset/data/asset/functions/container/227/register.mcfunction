#> asset:container/227/register
#
# コンテナの定義データ
#
# @within function asset:container/227/


execute unless loaded 97 15 79 run return 1

# ID (int)
    data modify storage asset:container ID set value 227
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [97, 15, 79]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-1"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []