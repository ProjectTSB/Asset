#> asset:container/1194/register
#
# コンテナの定義データ
#
# @within function asset:container/1194/


execute unless loaded -162 134 -350 run return 1

# ID (int)
    data modify storage asset:container ID set value 1194
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-162, 134, -350]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:tnt",Count:1b}},{Slot:1b,Item:{id:"minecraft:firework_star",Count:1b}},{Slot:2b,Item:{id:"minecraft:firework_star",Count:1b}},{Slot:3b,Item:617},{Slot:4b,Item:{id:"minecraft:white_banner",Count:1b,tag:{"BlockEntityTag":{"Patterns":[{"Color":9,"Pattern":"mr"},{"Color":8,"Pattern":"bs"},{"Color":7,"Pattern":"cs"},{"Color":8,"Pattern":"bo"},{"Color":15,"Pattern":"ms"},{"Color":8,"Pattern":"hh"},{"Color":8,"Pattern":"mc"},{"Color":15,"Pattern":"bo"}]},"HideFlags":32,"display":{"Name":"{\"translate\":\"block.minecraft.ominous_banner\",\"color\":\"gold\"}"}}}},{Slot:5b,Item:617},{Slot:6b,Item:{id:"minecraft:bone",Count:1b}},{Slot:7b,Item:{id:"minecraft:firework_star",Count:1b}},{Slot:8b,Item:{id:"minecraft:tnt",Count:1b}},{Slot:9b,Item:{id:"minecraft:firework_star",Count:1b}},{Slot:10b,Item:{id:"minecraft:firework_star",Count:1b}},{Slot:11b,Item:107},{Slot:12b,Item:{id:"minecraft:firework_star",Count:1b}},{Slot:13b,Item:{id:"minecraft:tnt",Count:1b}},{Slot:14b,Item:{id:"minecraft:firework_star",Count:1b}},{Slot:15b,Item:107},{Slot:16b,Item:{id:"minecraft:firework_star",Count:1b}},{Slot:17b,Item:{id:"minecraft:firework_star",Count:1b}},{Slot:18b,Item:{id:"minecraft:tnt",Count:1b}},{Slot:19b,Item:{id:"minecraft:string",Count:1b}},{Slot:20b,Item:{id:"minecraft:firework_star",Count:1b}},{Slot:21b,Item:{id:"minecraft:bone",Count:1b}},{Slot:22b,Item:204},{Slot:23b,Item:{id:"minecraft:firework_star",Count:1b}},{Slot:24b,Item:{id:"minecraft:firework_star",Count:1b}},{Slot:25b,Item:{id:"minecraft:brown_dye",Count:1b}},{Slot:26b,Item:{id:"minecraft:tnt",Count:1b}}]