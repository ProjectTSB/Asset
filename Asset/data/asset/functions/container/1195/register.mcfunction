#> asset:container/1195/register
#
# コンテナの定義データ
#
# @within function asset:container/1195/


execute unless loaded 25 -7 92 run return 1

# ID (int)
    data modify storage asset:container ID set value 1195
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [25, -7, 92]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-1"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []