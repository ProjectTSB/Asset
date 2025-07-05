#> asset:container/2353/register
#
# コンテナの定義データ
#
# @within function asset:container/2353/


execute unless loaded 259 144 124 run return 1

# ID (int)
    data modify storage asset:container ID set value 2353
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [259, 144, 124]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []