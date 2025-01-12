#> asset:container/803/register
#
# コンテナの定義データ
#
# @within function asset:container/803/


execute unless loaded 179 145 -202 run return 1

# ID (int)
    data modify storage asset:container ID set value 803
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [179, 145, -202]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []