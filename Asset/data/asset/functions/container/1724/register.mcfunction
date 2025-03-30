#> asset:container/1724/register
#
# コンテナの定義データ
#
# @within function asset:container/1724/


execute unless loaded 121 39 40 run return 1

# ID (int)
    data modify storage asset:container ID set value 1724
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [121, 39, 40]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/",Count:2b}},{Slot:1b,Item:{id:"minecraft:black_stained_glass_pane",Count:1b}},{Slot:2b,Item:{id:"minecraft:purple_candle",Count:1b}},{Slot:3b,Item:{id:"minecraft:purple_candle",Count:1b}},{Slot:4b,Item:{id:"minecraft:purple_candle",Count:1b}},{Slot:5b,Item:{id:"minecraft:black_stained_glass_pane",Count:1b}},{Slot:6b,Item:{id:"minecraft:black_stained_glass_pane",Count:1b}},{Slot:7b,Item:{id:"minecraft:black_stained_glass_pane",Count:1b}},{Slot:8b,Item:{PresetItem:"currency/",Count:2b}},{Slot:9b,Item:{PresetItem:"currency/",Count:2b}},{Slot:10b,Item:{id:"minecraft:black_stained_glass_pane",Count:1b}},{Slot:11b,Item:{id:"minecraft:black_stained_glass_pane",Count:1b}},{Slot:12b,Item:{id:"minecraft:black_stained_glass_pane",Count:1b}},{Slot:13b,Item:{id:"minecraft:purple_candle",Count:1b}},{Slot:14b,Item:{id:"minecraft:black_stained_glass_pane",Count:1b}},{Slot:15b,Item:{id:"minecraft:black_stained_glass_pane",Count:1b}},{Slot:16b,Item:{id:"minecraft:black_stained_glass_pane",Count:1b}},{Slot:17b,Item:{PresetItem:"currency/",Count:2b}},{Slot:18b,Item:{PresetItem:"currency/",Count:2b}},{Slot:19b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:20b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:22b,Item:{id:"minecraft:end_stone",Count:1b}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:24b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:25b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:26b,Item:{PresetItem:"currency/",Count:2b}}]