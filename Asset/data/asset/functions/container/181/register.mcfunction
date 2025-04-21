#> asset:container/181/register
#
# コンテナの定義データ
#
# @within function asset:container/181/


execute unless loaded -26 20 28 run return 1

# ID (int)
    data modify storage asset:container ID set value 181
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-26, 20, 28]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-1"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []