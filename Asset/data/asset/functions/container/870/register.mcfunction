#> asset:container/870/register
#
# コンテナの定義データ
#
# @within function asset:container/870/


execute unless loaded 132 16 30 run return 1

# ID (int)
    data modify storage asset:container ID set value 870
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [132, 16, 30]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:cake",Count:1b}},{Slot:1b,Item:{id:"minecraft:pumpkin_pie",Count:1b}},{Slot:2b,Item:{id:"minecraft:pumpkin_pie",Count:1b}},{Slot:3b,Item:{id:"minecraft:honey_bottle",Count:1b}},{Slot:4b,Item:{id:"minecraft:sugar",Count:16b}},{Slot:5b,Item:{id:"minecraft:honey_bottle",Count:1b}},{Slot:6b,Item:{id:"minecraft:pumpkin_pie",Count:1b}},{Slot:7b,Item:{id:"minecraft:pumpkin_pie",Count:1b}},{Slot:8b,Item:{id:"minecraft:cake",Count:1b}},{Slot:9b,Item:{id:"minecraft:egg",Count:16b}},{Slot:10b,Item:{id:"minecraft:milk_bucket",Count:1b}},{Slot:11b,Item:{id:"minecraft:glowstone_dust",Count:16b}},{Slot:12b,Item:{id:"minecraft:sugar",Count:16b}},{Slot:13b,Item:1119},{Slot:14b,Item:{id:"minecraft:sugar",Count:16b}},{Slot:15b,Item:{id:"minecraft:redstone",Count:16b}},{Slot:16b,Item:{id:"minecraft:milk_bucket",Count:1b}},{Slot:17b,Item:{id:"minecraft:egg",Count:16b}},{Slot:18b,Item:{id:"minecraft:cake",Count:1b}},{Slot:19b,Item:{id:"minecraft:pumpkin_pie",Count:1b}},{Slot:20b,Item:{id:"minecraft:pumpkin_pie",Count:1b}},{Slot:21b,Item:{id:"minecraft:honey_bottle",Count:1b}},{Slot:22b,Item:{id:"minecraft:sugar",Count:16b}},{Slot:23b,Item:{id:"minecraft:honey_bottle",Count:1b}},{Slot:24b,Item:{id:"minecraft:pumpkin_pie",Count:1b}},{Slot:25b,Item:{id:"minecraft:pumpkin_pie",Count:1b}},{Slot:26b,Item:{id:"minecraft:cake",Count:1b}}]