#> asset:container/815/register
#
# コンテナの定義データ
#
# @within function asset:container/815/


execute unless loaded -203 208 393 run return 1

# ID (int)
    data modify storage asset:container ID set value 815
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-203, 208, 393]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:trapped_chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:diamond",Count:4b}},{Slot:1b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:2b,Item:{id:"minecraft:ender_pearl",Count:4b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-4",Count:3b}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:6b,Item:{id:"minecraft:ender_pearl",Count:4b}},{Slot:7b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:8b,Item:{id:"minecraft:diamond",Count:4b}},{Slot:9b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:10b,Item:{id:"minecraft:clock",Count:1b}},{Slot:11b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-4",Count:3b}},{Slot:13b,Item:719},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-4",Count:3b}},{Slot:15b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:16b,Item:{id:"minecraft:clock",Count:1b}},{Slot:17b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:18b,Item:{id:"minecraft:diamond",Count:4b}},{Slot:19b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:20b,Item:{id:"minecraft:ender_pearl",Count:4b}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-4",Count:3b}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:24b,Item:{id:"minecraft:ender_pearl",Count:4b}},{Slot:25b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:26b,Item:{id:"minecraft:diamond",Count:4b}}]