#> asset:container/1613/register
#
# コンテナの定義データ
#
# @within function asset:container/1613/


execute unless loaded 45 78 75 run return 1

# ID (int)
    data modify storage asset:container ID set value 1613
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [45, 78, 75]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []