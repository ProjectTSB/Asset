#> asset:container/1116/register
#
# コンテナの定義データ
#
# @within function asset:container/1116/


execute unless loaded -440 141 74 run return 1

# ID (int)
    data modify storage asset:container ID set value 1116
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-440, 141, 74]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []