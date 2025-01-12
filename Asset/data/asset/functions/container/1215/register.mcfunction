#> asset:container/1215/register
#
# コンテナの定義データ
#
# @within function asset:container/1215/


execute unless loaded 105 149 484 run return 1

# ID (int)
    data modify storage asset:container ID set value 1215
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [105, 149, 484]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:orange_shulker_box[facing=south]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []