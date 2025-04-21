#> asset:container/1094/register
#
# コンテナの定義データ
#
# @within function asset:container/1094/


execute unless loaded -480 76 20 run return 1

# ID (int)
    data modify storage asset:container ID set value 1094
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-480, 76, 20]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []