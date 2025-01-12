#> asset:container/327/register
#
# コンテナの定義データ
#
# @within function asset:container/327/


execute unless loaded -281 68 134 run return 1

# ID (int)
    data modify storage asset:container ID set value 327
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-281, 68, 134]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []