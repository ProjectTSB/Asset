#> asset:container/2648/register
#
# コンテナの定義データ
#
# @within function asset:container/2648/


execute unless loaded 116 103 636 run return 1

# ID (int)
    data modify storage asset:container ID set value 2648
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [116, 103, 636]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:1b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:2b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}},{Slot:3b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}},{Slot:4b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:5b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}},{Slot:6b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}},{Slot:7b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:9b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:10b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}},{Slot:11b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}},{Slot:12b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:13b,Item:788},{Slot:14b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:15b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}},{Slot:16b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}},{Slot:17b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:18b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:19b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:20b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}},{Slot:21b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}},{Slot:22b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:23b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b}},{Slot:24b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}},{Slot:25b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:26b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}}]