#> asset:container/634/register
#
# コンテナの定義データ
#
# @within function asset:container/634/


execute unless loaded -251 105 155 run return 1

# ID (int)
    data modify storage asset:container ID set value 634
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-251, 105, 155]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []