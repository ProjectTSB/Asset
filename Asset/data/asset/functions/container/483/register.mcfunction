#> asset:container/483/register
#
# コンテナの定義データ
#
# @within function asset:container/483/


execute unless loaded 224 137 126 run return 1

# ID (int)
    data modify storage asset:container ID set value 483
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [224, 137, 126]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=east]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []