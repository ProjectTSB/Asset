#> asset:container/2266/register
#
# コンテナの定義データ
#
# @within function asset:container/2266/


execute unless loaded 23 1 22 run return 1

# ID (int)
    data modify storage asset:container ID set value 2266
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [23, 1, 22]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:stone_sword",Count:1b,tag:{"Damage":0}}},{Slot:1b,Item:{id:"minecraft:bread",Count:2b}},{Slot:2b,Item:{id:"minecraft:cobweb",Count:4b}},{Slot:3b,Item:{id:"minecraft:dried_kelp",Count:4b}},{Slot:4b,Item:{id:"minecraft:spyglass",Count:1b}},{Slot:5b,Item:{id:"minecraft:dried_kelp",Count:4b}},{Slot:6b,Item:{id:"minecraft:cobweb",Count:4b}},{Slot:7b,Item:{id:"minecraft:bread",Count:2b}},{Slot:8b,Item:{id:"minecraft:stone_pickaxe",Count:1b,tag:{"Damage":0}}},{Slot:9b,Item:{id:"minecraft:arrow",Count:16b}},{Slot:10b,Item:{id:"minecraft:bow",Count:1b,tag:{"Damage":284}}},{Slot:11b,Item:{id:"minecraft:cobweb",Count:4b}},{Slot:12b,Item:{id:"minecraft:spyglass",Count:1b}},{Slot:13b,Item:{id:"minecraft:compass",Count:1b,tag:{"LodestoneDimension":"minecraft:overworld","LodestonePos":{"X":23,"Y":3,"Z":24},"LodestoneTracked":0b,"display":{"Name":"{\"text\":\"奈落の羅針盤\",\"color\":\"light_purple\",\"italic\":false}"}}}},{Slot:14b,Item:{id:"minecraft:spyglass",Count:1b}},{Slot:15b,Item:{id:"minecraft:cobweb",Count:4b}},{Slot:16b,Item:{id:"minecraft:bow",Count:1b,tag:{"Damage":284}}},{Slot:17b,Item:{id:"minecraft:arrow",Count:16b}},{Slot:18b,Item:{id:"minecraft:stone_shovel",Count:1b,tag:{"Damage":0}}},{Slot:19b,Item:{id:"minecraft:bread",Count:2b}},{Slot:20b,Item:{id:"minecraft:cobweb",Count:4b}},{Slot:21b,Item:{id:"minecraft:dried_kelp",Count:4b}},{Slot:22b,Item:{id:"minecraft:spyglass",Count:1b}},{Slot:23b,Item:{id:"minecraft:dried_kelp",Count:4b}},{Slot:24b,Item:{id:"minecraft:cobweb",Count:4b}},{Slot:25b,Item:{id:"minecraft:bread",Count:2b}},{Slot:26b,Item:{id:"minecraft:stone_sword",Count:1b,tag:{"Damage":0}}}]