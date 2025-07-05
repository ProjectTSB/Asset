#> asset:container/2318/register
#
# コンテナの定義データ
#
# @within function asset:container/2318/


execute unless loaded -45 2 85 run return 1

# ID (int)
    data modify storage asset:container ID set value 2318
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-45, 2, 85]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-2"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []