#> asset:container/1907/register
#
# コンテナの定義データ
#
# @within function asset:container/1907/


execute unless loaded -362 224 -301 run return 1

# ID (int)
    data modify storage asset:container ID set value 1907
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-362, 224, -301]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:supplies/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []