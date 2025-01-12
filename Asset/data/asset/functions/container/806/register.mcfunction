#> asset:container/806/register
#
# コンテナの定義データ
#
# @within function asset:container/806/


execute unless loaded 23 40 -366 run return 1

# ID (int)
    data modify storage asset:container ID set value 806
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [23, 40, -366]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=true,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:tube_coral_fan",Count:1b,tag:{}}},{Slot:1b,Item:{id:"minecraft:tube_coral_fan",Count:1b,tag:{}}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:7b,Item:{id:"minecraft:tube_coral_fan",Count:1b,tag:{}}},{Slot:8b,Item:{id:"minecraft:tube_coral_fan",Count:1b,tag:{}}},{Slot:9b,Item:{id:"minecraft:tube_coral_fan",Count:1b,tag:{}}},{Slot:10b,Item:{id:"minecraft:tube_coral_fan",Count:1b,tag:{}}},{Slot:11b,Item:{id:"minecraft:tube_coral_fan",Count:1b,tag:{}}},{Slot:12b,Item:{id:"minecraft:tube_coral_fan",Count:1b,tag:{}}},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:14b,Item:{id:"minecraft:tube_coral_fan",Count:1b,tag:{}}},{Slot:15b,Item:{id:"minecraft:tube_coral_fan",Count:1b,tag:{}}},{Slot:16b,Item:{id:"minecraft:tube_coral_fan",Count:1b,tag:{}}},{Slot:17b,Item:{id:"minecraft:tube_coral_fan",Count:1b,tag:{}}},{Slot:18b,Item:{id:"minecraft:tube_coral",Count:1b,tag:{}}},{Slot:19b,Item:{id:"minecraft:tube_coral",Count:1b,tag:{}}},{Slot:20b,Item:{id:"minecraft:tube_coral",Count:1b,tag:{}}},{Slot:21b,Item:{id:"minecraft:tube_coral_fan",Count:1b,tag:{}}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:23b,Item:{id:"minecraft:tube_coral_fan",Count:1b,tag:{}}},{Slot:24b,Item:{id:"minecraft:tube_coral",Count:1b,tag:{}}},{Slot:25b,Item:{id:"minecraft:tube_coral",Count:1b,tag:{}}},{Slot:26b,Item:{id:"minecraft:tube_coral",Count:1b,tag:{}}}]