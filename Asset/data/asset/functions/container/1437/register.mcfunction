#> asset:container/1437/register
#
# コンテナの定義データ
#
# @within function asset:container/1437/


execute unless loaded 38 -1 91 run return 1

# ID (int)
    data modify storage asset:container ID set value 1437
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [38, -1, 91]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=down]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-1"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []