#> asset:container/175/register
#
# コンテナの定義データ
#
# @within function asset:container/175/


execute unless loaded 24 23 -18 run return 1

# ID (int)
    data modify storage asset:container ID set value 175
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [24, 23, -18]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=south,type=null]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value common:island_rewards/lv-1
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value [undefined]