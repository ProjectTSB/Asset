#> asset:container/2383/register
#
# コンテナの定義データ
#
# @within function asset:container/2383/


execute unless loaded 80 86 -227 run return 1

# ID (int)
    data modify storage asset:container ID set value 2383
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [80, 86, -227]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []