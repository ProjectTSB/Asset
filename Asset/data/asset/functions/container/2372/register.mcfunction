#> asset:container/2372/register
#
# コンテナの定義データ
#
# @within function asset:container/2372/


execute unless loaded -145 169 -344 run return 1

# ID (int)
    data modify storage asset:container ID set value 2372
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-145, 169, -344]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []