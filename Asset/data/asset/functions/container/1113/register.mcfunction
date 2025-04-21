#> asset:container/1113/register
#
# コンテナの定義データ
#
# @within function asset:container/1113/


execute unless loaded -454 122 95 run return 1

# ID (int)
    data modify storage asset:container ID set value 1113
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-454, 122, 95]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=east]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []