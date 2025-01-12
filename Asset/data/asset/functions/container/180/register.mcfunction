#> asset:container/180/register
#
# コンテナの定義データ
#
# @within function asset:container/180/


execute unless loaded 17 23 -31 run return 1

# ID (int)
    data modify storage asset:container ID set value 180
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [17, 23, -31]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=down,type=null]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value common:island_rewards/lv-2
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value [undefined]