#> asset:container/839/register
#
# コンテナの定義データ
#
# @within function asset:container/839/


execute unless loaded 214 88 -362 run return 1

# ID (int)
    data modify storage asset:container ID set value 839
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [214, 88, -362]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:brewing_stand[]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:146},{Slot:1b,Item:146},{Slot:2b,Item:146},{Slot:3b,Item:515},{Slot:4b,Item:{id:"minecraft:blaze_powder",Count:64b}}]