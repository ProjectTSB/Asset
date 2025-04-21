#> asset:container/1078/register
#
# コンテナの定義データ
#
# @within function asset:container/1078/


execute unless loaded -450 66 6 run return 1

# ID (int)
    data modify storage asset:container ID set value 1078
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-450, 66, 6]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []