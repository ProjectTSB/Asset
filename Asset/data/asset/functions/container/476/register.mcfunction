#> asset:container/476/register
#
# コンテナの定義データ
#
# @within function asset:container/476/


execute unless loaded 154 80 37 run return 1

# ID (int)
    data modify storage asset:container ID set value 476
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [154, 80, 37]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-2"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []