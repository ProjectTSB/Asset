#> asset:container/605/register
#
# コンテナの定義データ
#
# @within function asset:container/605/


execute unless loaded 301 56 -80 run return 1

# ID (int)
    data modify storage asset:container ID set value 605
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [301, 56, -80]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=up,type=null]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-2"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []