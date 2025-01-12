#> asset:container/329/register
#
# コンテナの定義データ
#
# @within function asset:container/329/


execute unless loaded -282 69 135 run return 1

# ID (int)
    data modify storage asset:container ID set value 329
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-282, 69, 135]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=north,type=null]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []