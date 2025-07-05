#> asset:container/2354/register
#
# コンテナの定義データ
#
# @within function asset:container/2354/


execute unless loaded -271 39 181 run return 1

# ID (int)
    data modify storage asset:container ID set value 2354
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-271, 39, 181]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []