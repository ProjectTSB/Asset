#> asset:container/964/register
#
# コンテナの定義データ
#
# @within function asset:container/964/


execute unless loaded -155 43 -136 run return 1

# ID (int)
    data modify storage asset:container ID set value 964
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-155, 43, -136]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:raw_gold",Count:1b}},{Slot:1b,Item:{id:"minecraft:raw_gold",Count:1b}},{Slot:2b,Item:{id:"minecraft:ender_pearl",Count:4b}},{Slot:3b,Item:{id:"minecraft:raw_gold",Count:1b}},{Slot:4b,Item:12},{Slot:5b,Item:{id:"minecraft:raw_gold",Count:1b}},{Slot:6b,Item:{id:"minecraft:ender_pearl",Count:4b}},{Slot:7b,Item:{id:"minecraft:raw_gold",Count:1b}},{Slot:8b,Item:{id:"minecraft:raw_gold",Count:1b}}]