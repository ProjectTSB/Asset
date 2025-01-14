#> asset:container/14/register
#
# コンテナの定義データ
#
# @within function asset:container/14/


execute unless loaded 29 17 -31 run return 1

# ID (int)
    data modify storage asset:container ID set value 14
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [29, 17, -31]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:hopper[facing=down]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:cyan_dye",Count:1b}},{Slot:1b,Item:{id:"minecraft:cyan_dye",Count:1b}},{Slot:3b,Item:{id:"minecraft:light_blue_dye",Count:2b}}]