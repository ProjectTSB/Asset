#> asset:container/858/register
#
# コンテナの定義データ
#
# @within function asset:container/858/


execute unless loaded 9 37 -213 run return 1

# ID (int)
    data modify storage asset:container ID set value 858
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [9, 37, -213]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value common:island_rewards/lv-2
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value [undefined]