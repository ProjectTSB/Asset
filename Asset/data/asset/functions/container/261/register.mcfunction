#> asset:container/261/register
#
# コンテナの定義データ
#
# @within function asset:container/261/


execute unless loaded 72 20 218 run return 1

# ID (int)
    data modify storage asset:container ID set value 261
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [72, 20, 218]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-2"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []