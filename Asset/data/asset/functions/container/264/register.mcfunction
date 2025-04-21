#> asset:container/264/register
#
# コンテナの定義データ
#
# @within function asset:container/264/


execute unless loaded 57 8 225 run return 1

# ID (int)
    data modify storage asset:container ID set value 264
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [57, 8, 225]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-2"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []