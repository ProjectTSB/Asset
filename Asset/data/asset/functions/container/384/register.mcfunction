#> asset:container/384/register
#
# コンテナの定義データ
#
# @within function asset:container/384/


execute unless loaded -78 42 400 run return 1

# ID (int)
    data modify storage asset:container ID set value 384
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-78, 42, 400]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-2"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []