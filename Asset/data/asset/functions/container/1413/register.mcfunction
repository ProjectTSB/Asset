#> asset:container/1413/register
#
# コンテナの定義データ
#
# @within function asset:container/1413/


execute unless loaded 465 70 78 run return 1

# ID (int)
    data modify storage asset:container ID set value 1413
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [465, 70, 78]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []