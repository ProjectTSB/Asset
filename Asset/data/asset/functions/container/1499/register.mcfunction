#> asset:container/1499/register
#
# コンテナの定義データ
#
# @within function asset:container/1499/


execute unless loaded -62 42 -305 run return 1

# ID (int)
    data modify storage asset:container ID set value 1499
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-62, 42, -305]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/",Count:16b}},{Slot:1b,Item:{PresetItem:"currency/",Count:16b}},{Slot:2b,Item:{id:"minecraft:tube_coral_block",Count:64b}},{Slot:3b,Item:{id:"minecraft:fire_coral_block",Count:64b}},{Slot:4b,Item:{id:"minecraft:horn_coral_block",Count:64b}},{Slot:5b,Item:{id:"minecraft:bubble_coral_block",Count:64b}},{Slot:6b,Item:{id:"minecraft:brain_coral_block",Count:64b}},{Slot:7b,Item:{PresetItem:"currency/",Count:16b}},{Slot:8b,Item:{PresetItem:"currency/",Count:16b}},{Slot:9b,Item:{PresetItem:"currency/",Count:16b}},{Slot:10b,Item:{id:"minecraft:tube_coral_block",Count:64b}},{Slot:11b,Item:{id:"minecraft:fire_coral_block",Count:64b}},{Slot:12b,Item:{id:"minecraft:horn_coral_block",Count:64b}},{Slot:13b,Item:{id:"minecraft:wet_sponge",Count:64b}},{Slot:14b,Item:{id:"minecraft:horn_coral_block",Count:64b}},{Slot:15b,Item:{id:"minecraft:bubble_coral_block",Count:64b}},{Slot:16b,Item:{id:"minecraft:brain_coral_block",Count:64b}},{Slot:17b,Item:{PresetItem:"currency/",Count:16b}},{Slot:18b,Item:{PresetItem:"currency/",Count:16b}},{Slot:19b,Item:{PresetItem:"currency/",Count:16b}},{Slot:20b,Item:{id:"minecraft:tube_coral_block",Count:64b}},{Slot:21b,Item:{id:"minecraft:fire_coral_block",Count:64b}},{Slot:22b,Item:{id:"minecraft:horn_coral_block",Count:64b}},{Slot:23b,Item:{id:"minecraft:bubble_coral_block",Count:64b}},{Slot:24b,Item:{id:"minecraft:brain_coral_block",Count:64b}},{Slot:25b,Item:{PresetItem:"currency/",Count:16b}},{Slot:26b,Item:{PresetItem:"currency/",Count:16b}}]