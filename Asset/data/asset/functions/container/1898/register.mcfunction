#> asset:container/1898/register
#
# コンテナの定義データ
#
# @within function asset:container/1898/


execute unless loaded 94 28 81 run return 1

# ID (int)
    data modify storage asset:container ID set value 1898
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [94, 28, 81]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/",Count:3b}},{Slot:1b,Item:143},{Slot:2b,Item:{PresetItem:"currency/",Count:3b}},{Slot:3b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}},{Slot:4b,Item:{id:"minecraft:light_gray_stained_glass_pane",Count:1b}},{Slot:5b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}},{Slot:6b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}},{Slot:7b,Item:{id:"minecraft:light_gray_stained_glass_pane",Count:1b}},{Slot:8b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}},{Slot:9b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}},{Slot:10b,Item:{PresetItem:"currency/",Count:3b}},{Slot:11b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}},{Slot:12b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}},{Slot:13b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}},{Slot:14b,Item:{id:"minecraft:light_gray_stained_glass_pane",Count:1b}},{Slot:15b,Item:{id:"minecraft:light_gray_stained_glass_pane",Count:1b}},{Slot:16b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}},{Slot:17b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}},{Slot:18b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}},{Slot:19b,Item:{PresetItem:"currency/",Count:3b}},{Slot:20b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:22b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}},{Slot:23b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}},{Slot:24b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}},{Slot:25b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}},{Slot:26b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}}]