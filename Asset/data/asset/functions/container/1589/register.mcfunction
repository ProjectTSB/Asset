#> asset:container/1589/register
#
# コンテナの定義データ
#
# @within function asset:container/1589/


execute unless loaded 451 9 412 run return 1

# ID (int)
    data modify storage asset:container ID set value 1589
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [451, 9, 412]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []