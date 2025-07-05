#> asset:container/2389/register
#
# コンテナの定義データ
#
# @within function asset:container/2389/


execute unless loaded -138 153 -328 run return 1

# ID (int)
    data modify storage asset:container ID set value 2389
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-138, 153, -328]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []