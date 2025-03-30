#> asset:container/1392/register
#
# コンテナの定義データ
#
# @within function asset:container/1392/


execute unless loaded -13 2 177 run return 1

# ID (int)
    data modify storage asset:container ID set value 1392
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-13, 2, 177]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:4b,Item:1119}]