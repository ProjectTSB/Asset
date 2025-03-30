#> asset:container/1690/register
#
# コンテナの定義データ
#
# @within function asset:container/1690/


execute unless loaded 97 127 222 run return 1

# ID (int)
    data modify storage asset:container ID set value 1690
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [97, 127, 222]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=east]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:cooked_beef",Count:7b}},{Slot:1b,Item:{id:"minecraft:cooked_beef",Count:7b}},{Slot:2b,Item:{id:"minecraft:cooked_beef",Count:7b}},{Slot:3b,Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{"Damage":0}}},{Slot:4b,Item:{id:"minecraft:diamond_axe",Count:1b,tag:{"Damage":0}}},{Slot:5b,Item:{id:"minecraft:diamond_shovel",Count:1b,tag:{"Damage":0}}},{Slot:9b,Item:{id:"minecraft:cooked_beef",Count:42b}},{Slot:14b,Item:{id:"minecraft:goat_horn",Count:1b,tag:{"instrument":"minecraft:yearn_goat_horn"}}},{Slot:21b,Item:{id:"minecraft:bone_meal",Count:21b}},{Slot:22b,Item:{id:"minecraft:arrow",Count:64b}},{Slot:23b,Item:{id:"minecraft:water_bucket",Count:1b}},{Slot:24b,Item:{id:"minecraft:lava_bucket",Count:1b}},{Slot:25b,Item:{id:"minecraft:tnt",Count:16b}},{Slot:26b,Item:{id:"minecraft:charcoal",Count:21b}}]