#> asset:container/320/register
#
# コンテナの定義データ
#
# @within function asset:container/320/


execute unless loaded 34 97 182 run return 1

# ID (int)
    data modify storage asset:container ID set value 320
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [34, 97, 182]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []