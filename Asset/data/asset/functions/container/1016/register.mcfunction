#> asset:container/1016/register
#
# コンテナの定義データ
#
# @within function asset:container/1016/


execute unless loaded 255 111 -240 run return 1

# ID (int)
    data modify storage asset:container ID set value 1016
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [255, 111, -240]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []