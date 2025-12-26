#> asset:container/2555/register
#
# コンテナの定義データ
#
# @within function asset:container/2555/


execute unless loaded -66 62 224 run return 1

# ID (int)
    data modify storage asset:container ID set value 2555
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-66, 62, 224]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-2"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []