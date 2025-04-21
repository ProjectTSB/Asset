#> asset:container/713/register
#
# コンテナの定義データ
#
# @within function asset:container/713/


execute unless loaded 460 90 69 run return 1

# ID (int)
    data modify storage asset:container ID set value 713
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [460, 90, 69]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []