#> asset:container/854/register
#
# コンテナの定義データ
#
# @within function asset:container/854/


execute unless loaded -75 114 -39 run return 1

# ID (int)
    data modify storage asset:container ID set value 854
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-75, 114, -39]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:1b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:3b,Item:624},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-2",Count:2b}},{Slot:5b,Item:629},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:7b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:8b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:9b,Item:{id:"minecraft:red_stained_glass_pane",Count:1b}},{Slot:10b,Item:{id:"minecraft:orange_stained_glass_pane",Count:1b}},{Slot:11b,Item:{id:"minecraft:yellow_stained_glass_pane",Count:1b}},{Slot:12b,Item:{id:"minecraft:lime_stained_glass_pane",Count:1b}},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-3",Count:3b}},{Slot:14b,Item:{id:"minecraft:lime_stained_glass_pane",Count:1b}},{Slot:15b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}},{Slot:16b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:17b,Item:{id:"minecraft:purple_stained_glass_pane",Count:1b}},{Slot:18b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:19b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:20b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:21b,Item:634},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-2",Count:2b}},{Slot:23b,Item:204},{Slot:24b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:25b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:26b,Item:{PresetItem:"currency/high",Count:4b}}]