#> asset:container/582/register
#
# コンテナの定義データ
#
# @within function asset:container/582/


execute unless loaded 202 15 -138 run return 1

# ID (int)
    data modify storage asset:container ID set value 582
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [202, 15, -138]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up,type=null]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-2"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []