#> asset:container/1151/register
#
# コンテナの定義データ
#
# @within function asset:container/1151/


execute unless loaded -123 200 -348 run return 1

# ID (int)
    data modify storage asset:container ID set value 1151
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-123, 200, -348]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []