#> asset:container/2096/register
#
# コンテナの定義データ
#
# @within function asset:container/2096/


execute unless loaded 17 23 -31 run return 1

# ID (int)
    data modify storage asset:container ID set value 2096
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [17, 23, -31]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=down]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-0"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []