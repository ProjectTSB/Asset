#> asset:container/1343/register
#
# コンテナの定義データ
#
# @within function asset:container/1343/


execute unless loaded 107 47 590 run return 1

# ID (int)
    data modify storage asset:container ID set value 1343
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [107, 47, 590]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:white_shulker_box[facing=south]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []