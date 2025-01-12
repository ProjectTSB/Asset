#> asset:container/1325/register
#
# コンテナの定義データ
#
# @within function asset:container/1325/


execute unless loaded 421 169 65 run return 1

# ID (int)
    data modify storage asset:container ID set value 1325
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [421, 169, 65]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b,tag:{}}},{Slot:1b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b,tag:{}}},{Slot:2b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b,tag:{}}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:4b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b,tag:{}}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:6b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b,tag:{}}},{Slot:7b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b,tag:{}}},{Slot:8b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b,tag:{}}},{Slot:9b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b,tag:{}}},{Slot:10b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b,tag:{}}},{Slot:11b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:12b,Item:397},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:14b,Item:954},{Slot:15b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:16b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b,tag:{}}},{Slot:17b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b,tag:{}}},{Slot:18b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b,tag:{}}},{Slot:19b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b,tag:{}}},{Slot:20b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b,tag:{}}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:22b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b,tag:{}}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:24b,Item:{id:"minecraft:cyan_stained_glass_pane",Count:1b,tag:{}}},{Slot:25b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b,tag:{}}},{Slot:26b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b,tag:{}}}]