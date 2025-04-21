#> asset:container/2044/register
#
# コンテナの定義データ
#
# @within function asset:container/2044/


execute unless loaded 86 -10 51 run return 1

# ID (int)
    data modify storage asset:container ID set value 2044
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [86, -10, 51]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-1"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []