#> asset:container/258/register
#
# コンテナの定義データ
#
# @within function asset:container/258/


execute unless loaded 210 31 -4 run return 1

# ID (int)
    data modify storage asset:container ID set value 258
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [210, 31, -4]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-1"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []