#> asset:container/1155/register
#
# コンテナの定義データ
#
# @within function asset:container/1155/


execute unless loaded -166 178 -326 run return 1

# ID (int)
    data modify storage asset:container ID set value 1155
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-166, 178, -326]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:brown_shulker_box[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []