#> asset:container/1580/register
#
# コンテナの定義データ
#
# @within function asset:container/1580/


execute unless loaded 24 40 -393 run return 1

# ID (int)
    data modify storage asset:container ID set value 1580
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [24, 40, -393]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=true,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []