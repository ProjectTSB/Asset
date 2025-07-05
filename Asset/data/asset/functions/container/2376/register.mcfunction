#> asset:container/2376/register
#
# コンテナの定義データ
#
# @within function asset:container/2376/


execute unless loaded -191 165 -375 run return 1

# ID (int)
    data modify storage asset:container ID set value 2376
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-191, 165, -375]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []