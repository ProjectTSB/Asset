#> asset:container/1883/register
#
# コンテナの定義データ
#
# @within function asset:container/1883/


execute unless loaded 243 169 474 run return 1

# ID (int)
    data modify storage asset:container ID set value 1883
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [243, 169, 474]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:supplies/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []