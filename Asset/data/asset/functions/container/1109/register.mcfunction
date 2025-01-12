#> asset:container/1109/register
#
# コンテナの定義データ
#
# @within function asset:container/1109/


execute unless loaded -458 104 21 run return 1

# ID (int)
    data modify storage asset:container ID set value 1109
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-458, 104, 21]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=west]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []