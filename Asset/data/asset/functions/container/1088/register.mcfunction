#> asset:container/1088/register
#
# コンテナの定義データ
#
# @within function asset:container/1088/


execute unless loaded -459 66 81 run return 1

# ID (int)
    data modify storage asset:container ID set value 1088
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-459, 66, 81]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=true,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []