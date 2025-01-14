#> asset:container/750/register
#
# コンテナの定義データ
#
# @within function asset:container/750/


execute unless loaded 86 22 139 run return 1

# ID (int)
    data modify storage asset:container ID set value 750
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [86, 22, 139]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:gold_block",Count:6b}},{Slot:1b,Item:{id:"minecraft:gold_block",Count:6b}},{Slot:2b,Item:135},{Slot:3b,Item:{id:"minecraft:golden_helmet",Count:1b,tag:{"Damage":0}}},{Slot:4b,Item:{id:"minecraft:gold_ingot",Count:32b}},{Slot:5b,Item:{id:"minecraft:golden_leggings",Count:1b,tag:{"Damage":0}}},{Slot:6b,Item:92},{Slot:7b,Item:{id:"minecraft:gold_block",Count:6b}},{Slot:8b,Item:{id:"minecraft:gold_block",Count:6b}},{Slot:9b,Item:{id:"minecraft:raw_gold",Count:32b}},{Slot:10b,Item:{id:"minecraft:raw_gold",Count:32b}},{Slot:11b,Item:136},{Slot:12b,Item:{id:"minecraft:gold_ingot",Count:32b}},{Slot:13b,Item:187},{Slot:14b,Item:{id:"minecraft:gold_ingot",Count:32b}},{Slot:15b,Item:136},{Slot:16b,Item:{id:"minecraft:raw_gold",Count:32b}},{Slot:17b,Item:{id:"minecraft:raw_gold",Count:32b}},{Slot:18b,Item:{id:"minecraft:gold_block",Count:6b}},{Slot:19b,Item:{id:"minecraft:gold_block",Count:6b}},{Slot:20b,Item:22},{Slot:21b,Item:{id:"minecraft:golden_chestplate",Count:1b,tag:{"Damage":0}}},{Slot:22b,Item:{id:"minecraft:gold_ingot",Count:32b}},{Slot:23b,Item:{id:"minecraft:golden_boots",Count:1b,tag:{"Damage":0}}},{Slot:24b,Item:135},{Slot:25b,Item:{id:"minecraft:gold_block",Count:6b}},{Slot:26b,Item:{id:"minecraft:gold_block",Count:6b}}]