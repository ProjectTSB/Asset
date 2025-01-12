#> asset:container/20/register
#
# コンテナの定義データ
#
# @within function asset:container/20/


execute unless loaded 41 8 24 run return 1

# ID (int)
    data modify storage asset:container ID set value 20
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [41, 8, 24]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=up,type=null]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:torch",Count:16b,tag:{}}},{Slot:1b,Item:{id:"minecraft:bread",Count:4b,tag:{}}},{Slot:2b,Item:{id:"minecraft:shears",Count:1b,tag:{"Damage":0}}},{Slot:3b,Item:{id:"minecraft:bread",Count:4b,tag:{}}},{Slot:4b,Item:{id:"minecraft:tuff",Count:16b,tag:{}}},{Slot:5b,Item:{id:"minecraft:bread",Count:4b,tag:{}}},{Slot:6b,Item:{id:"minecraft:cobweb",Count:8b,tag:{}}},{Slot:7b,Item:{id:"minecraft:bread",Count:4b,tag:{}}},{Slot:8b,Item:{id:"minecraft:torch",Count:16b,tag:{}}}]