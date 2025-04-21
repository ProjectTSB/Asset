#> asset:container/2099/register
#
# コンテナの定義データ
#
# @within function asset:container/2099/


execute unless loaded -112 221 665 run return 1

# ID (int)
    data modify storage asset:container ID set value 2099
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-112, 221, 665]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:12b,Item:{id:"minecraft:iron_ingot",Count:1b}},{Slot:14b,Item:{id:"minecraft:poppy",Count:1b}}]