#> asset:container/1451/register
#
# コンテナの定義データ
#
# @within function asset:container/1451/


execute unless loaded 157 82 45 run return 1

# ID (int)
    data modify storage asset:container ID set value 1451
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [157, 82, 45]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=east]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-2"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []