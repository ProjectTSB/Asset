#> asset:container/2031/register
#
# コンテナの定義データ
#
# @within function asset:container/2031/


execute unless loaded -83 7 59 run return 1

# ID (int)
    data modify storage asset:container ID set value 2031
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-83, 7, 59]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-1"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []