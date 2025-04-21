#> asset:container/1117/register
#
# コンテナの定義データ
#
# @within function asset:container/1117/


execute unless loaded -472 141 42 run return 1

# ID (int)
    data modify storage asset:container ID set value 1117
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-472, 141, 42]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []