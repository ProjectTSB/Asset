#> asset:container/1509/register
#
# コンテナの定義データ
#
# @within function asset:container/1509/


execute unless loaded -133 87 152 run return 1

# ID (int)
    data modify storage asset:container ID set value 1509
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-133, 87, 152]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=east]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []