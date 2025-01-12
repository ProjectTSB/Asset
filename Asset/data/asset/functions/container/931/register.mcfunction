#> asset:container/931/register
#
# コンテナの定義データ
#
# @within function asset:container/931/


execute unless loaded 104 120 -245 run return 1

# ID (int)
    data modify storage asset:container ID set value 931
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [104, 120, -245]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []