#> asset:container/1832/register
#
# コンテナの定義データ
#
# @within function asset:container/1832/


execute unless loaded -149 62 -158 run return 1

# ID (int)
    data modify storage asset:container ID set value 1832
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-149, 62, -158]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:smoker[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:469}]