#> asset:container/2188/register
#
# コンテナの定義データ
#
# @within function asset:container/2188/


execute unless loaded -274 59 179 run return 1

# ID (int)
    data modify storage asset:container ID set value 2188
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-274, 59, 179]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=east]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:splash_potion",Count:1b,tag:{"Potion":"minecraft:long_slowness"}}},{Slot:1b,Item:{id:"minecraft:splash_potion",Count:1b,tag:{"Potion":"minecraft:long_slowness"}}},{Slot:2b,Item:{id:"minecraft:splash_potion",Count:1b,tag:{"Potion":"minecraft:long_slowness"}}},{Slot:3b,Item:{id:"minecraft:splash_potion",Count:1b,tag:{"Potion":"minecraft:long_slowness"}}},{Slot:4b,Item:{id:"minecraft:splash_potion",Count:1b,tag:{"Potion":"minecraft:long_slowness"}}},{Slot:5b,Item:{id:"minecraft:splash_potion",Count:1b,tag:{"Potion":"minecraft:long_slowness"}}},{Slot:6b,Item:{id:"minecraft:splash_potion",Count:1b,tag:{"Potion":"minecraft:long_slowness"}}},{Slot:7b,Item:{id:"minecraft:splash_potion",Count:1b,tag:{"Potion":"minecraft:long_slowness"}}},{Slot:8b,Item:{id:"minecraft:splash_potion",Count:1b,tag:{"Potion":"minecraft:long_slowness"}}}]