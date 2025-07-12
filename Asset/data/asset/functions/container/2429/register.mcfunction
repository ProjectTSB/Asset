#> asset:container/2429/register
#
# コンテナの定義データ
#
# @within function asset:container/2429/


execute unless loaded 293 56 -74 run return 1

# ID (int)
    data modify storage asset:container ID set value 2429
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [293, 56, -74]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []