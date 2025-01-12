#> asset:container/523/register
#
# コンテナの定義データ
#
# @within function asset:container/523/


execute unless loaded -62 41 -166 run return 1

# ID (int)
    data modify storage asset:container ID set value 523
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-62, 41, -166]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-1"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []