#> asset:container/906/register
#
# コンテナの定義データ
#
# @within function asset:container/906/


execute unless loaded -68 247 405 run return 1

# ID (int)
    data modify storage asset:container ID set value 906
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-68, 247, 405]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []