#> asset:container/2471/register
#
# コンテナの定義データ
#
# @within function asset:container/2471/


execute unless loaded -68 86 -35 run return 1

# ID (int)
    data modify storage asset:container ID set value 2471
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-68, 86, -35]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-2"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []