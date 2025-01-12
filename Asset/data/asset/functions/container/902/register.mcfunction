#> asset:container/902/register
#
# コンテナの定義データ
#
# @within function asset:container/902/


execute unless loaded -70 240 398 run return 1

# ID (int)
    data modify storage asset:container ID set value 902
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-70, 240, 398]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:27b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:28b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:29b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:30b,Item:{id:"minecraft:book",Count:16b,tag:{}}},{Slot:31b,Item:{id:"minecraft:lapis_block",Count:8b,tag:{}}},{Slot:32b,Item:{id:"minecraft:book",Count:16b,tag:{}}},{Slot:33b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:34b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:35b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:36b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:37b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:38b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:39b,Item:{id:"minecraft:lapis_block",Count:8b,tag:{}}},{Slot:40b,Item:246},{Slot:41b,Item:{id:"minecraft:diamond_block",Count:2b,tag:{}}},{Slot:42b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:43b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:44b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:45b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:46b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:47b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:48b,Item:{id:"minecraft:book",Count:16b,tag:{}}},{Slot:49b,Item:{id:"minecraft:diamond_block",Count:2b,tag:{}}},{Slot:50b,Item:{id:"minecraft:book",Count:16b,tag:{}}},{Slot:51b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}},{Slot:52b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:53b,Item:{id:"minecraft:bookshelf",Count:8b,tag:{}}}]