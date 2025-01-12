#> asset:container/547/register
#
# コンテナの定義データ
#
# @within function asset:container/547/


execute unless loaded 47 42 -117 run return 1

# ID (int)
    data modify storage asset:container ID set value 547
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [47, 42, -117]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-1"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []