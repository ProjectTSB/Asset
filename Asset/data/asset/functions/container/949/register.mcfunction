#> asset:container/949/register
#
# コンテナの定義データ
#
# @within function asset:container/949/


execute unless loaded 229 116 -34 run return 1

# ID (int)
    data modify storage asset:container ID set value 949
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [229, 116, -34]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []