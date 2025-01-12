#> asset:container/259/register
#
# コンテナの定義データ
#
# @within function asset:container/259/


execute unless loaded 124 13 -43 run return 1

# ID (int)
    data modify storage asset:container ID set value 259
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [124, 13, -43]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-1"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []