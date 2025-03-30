#> asset:container/1383/register
#
# コンテナの定義データ
#
# @within function asset:container/1383/


execute unless loaded 132 55 -192 run return 1

# ID (int)
    data modify storage asset:container ID set value 1383
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [132, 55, -192]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-2"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []