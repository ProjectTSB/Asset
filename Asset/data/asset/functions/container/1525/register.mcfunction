#> asset:container/1525/register
#
# コンテナの定義データ
#
# @within function asset:container/1525/


execute unless loaded 155 100 289 run return 1

# ID (int)
    data modify storage asset:container ID set value 1525
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [155, 100, 289]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []