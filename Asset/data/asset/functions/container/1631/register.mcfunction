#> asset:container/1631/register
#
# コンテナの定義データ
#
# @within function asset:container/1631/


execute unless loaded -232 87 -32 run return 1

# ID (int)
    data modify storage asset:container ID set value 1631
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-232, 87, -32]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []