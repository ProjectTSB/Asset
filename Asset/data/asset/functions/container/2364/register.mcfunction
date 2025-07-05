#> asset:container/2364/register
#
# コンテナの定義データ
#
# @within function asset:container/2364/


execute unless loaded 24 118 -393 run return 1

# ID (int)
    data modify storage asset:container ID set value 2364
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [24, 118, -393]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:1b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:2b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:3b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:4b,Item:1051},{Slot:5b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:6b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:7b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:9b,Item:{id:"minecraft:tube_coral",Count:1b}},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:11b,Item:{id:"minecraft:wet_sponge",Count:16b}},{Slot:12b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:13b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:14b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:15b,Item:{id:"minecraft:wet_sponge",Count:16b}},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:17b,Item:{id:"minecraft:tube_coral",Count:1b}},{Slot:18b,Item:{id:"minecraft:bubble_coral_block",Count:1b}},{Slot:19b,Item:{id:"minecraft:horn_coral",Count:1b}},{Slot:20b,Item:{id:"minecraft:fire_coral_fan",Count:1b}},{Slot:21b,Item:{id:"minecraft:brain_coral_fan",Count:1b}},{Slot:22b,Item:{id:"minecraft:bubble_coral",Count:1b}},{Slot:23b,Item:{id:"minecraft:brain_coral",Count:1b}},{Slot:24b,Item:{id:"minecraft:fire_coral",Count:1b}},{Slot:25b,Item:{id:"minecraft:horn_coral",Count:1b}},{Slot:26b,Item:{id:"minecraft:bubble_coral_block",Count:1b}}]