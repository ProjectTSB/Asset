#> asset:container/914/register
#
# コンテナの定義データ
#
# @within function asset:container/914/


execute unless loaded 97 150 -228 run return 1

# ID (int)
    data modify storage asset:container ID set value 914
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [97, 150, -228]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=west,type=null]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []