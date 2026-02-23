#> asset:container/2741/register
#
# コンテナの定義データ
#
# @within function asset:container/2741/


execute unless loaded -149 206 190 run return 1

# ID (int)
    data modify storage asset:container ID set value 2741
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-149, 206, 190]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []