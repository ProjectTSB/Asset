#> asset:container/1349/register
#
# コンテナの定義データ
#
# @within function asset:container/1349/


execute unless loaded 135 112 627 run return 1

# ID (int)
    data modify storage asset:container ID set value 1349
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [135, 112, 627]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []