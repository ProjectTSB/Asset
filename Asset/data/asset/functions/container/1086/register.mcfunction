#> asset:container/1086/register
#
# コンテナの定義データ
#
# @within function asset:container/1086/


execute unless loaded -497 92 81 run return 1

# ID (int)
    data modify storage asset:container ID set value 1086
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-497, 92, 81]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []