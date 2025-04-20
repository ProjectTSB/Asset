#> asset:container/2036/register
#
# コンテナの定義データ
#
# @within function asset:container/2036/


execute unless loaded -66 13 45 run return 1

# ID (int)
    data modify storage asset:container ID set value 2036
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-66, 13, 45]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-1"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []