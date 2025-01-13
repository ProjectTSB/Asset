#> asset:container/498/register
#
# コンテナの定義データ
#
# @within function asset:container/498/


execute unless loaded -129 57 -18 run return 1

# ID (int)
    data modify storage asset:container ID set value 498
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-129, 57, -18]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-2"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []