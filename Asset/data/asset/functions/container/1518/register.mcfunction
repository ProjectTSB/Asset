#> asset:container/1518/register
#
# コンテナの定義データ
#
# @within function asset:container/1518/


execute unless loaded 245 137 171 run return 1

# ID (int)
    data modify storage asset:container ID set value 1518
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [245, 137, 171]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []