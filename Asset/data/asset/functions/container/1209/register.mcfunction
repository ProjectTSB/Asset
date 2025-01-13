#> asset:container/1209/register
#
# コンテナの定義データ
#
# @within function asset:container/1209/


execute unless loaded 165 23 221 run return 1

# ID (int)
    data modify storage asset:container ID set value 1209
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [165, 23, 221]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-2"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []