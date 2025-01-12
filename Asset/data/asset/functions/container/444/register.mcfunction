#> asset:container/444/register
#
# コンテナの定義データ
#
# @within function asset:container/444/


execute unless loaded 425 87 91 run return 1

# ID (int)
    data modify storage asset:container ID set value 444
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [425, 87, 91]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value common:island_rewards/lv-4
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value [undefined]