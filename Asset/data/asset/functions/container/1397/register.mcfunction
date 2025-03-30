#> asset:container/1397/register
#
# コンテナの定義データ
#
# @within function asset:container/1397/


execute unless loaded 84 -4 33 run return 1

# ID (int)
    data modify storage asset:container ID set value 1397
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [84, -4, 33]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-1"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []