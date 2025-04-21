#> asset:container/530/register
#
# コンテナの定義データ
#
# @within function asset:container/530/


execute unless loaded -246 122 -26 run return 1

# ID (int)
    data modify storage asset:container ID set value 530
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-246, 122, -26]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []