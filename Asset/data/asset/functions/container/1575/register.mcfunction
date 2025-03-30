#> asset:container/1575/register
#
# コンテナの定義データ
#
# @within function asset:container/1575/


execute unless loaded 37 40 -380 run return 1

# ID (int)
    data modify storage asset:container ID set value 1575
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [37, 40, -380]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=true,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []