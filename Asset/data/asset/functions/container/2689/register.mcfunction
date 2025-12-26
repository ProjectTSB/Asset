#> asset:container/2689/register
#
# コンテナの定義データ
#
# @within function asset:container/2689/


execute unless loaded 164 167 -199 run return 1

# ID (int)
    data modify storage asset:container ID set value 2689
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [164, 167, -199]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:1b,Item:980},{Slot:2b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:3b,Item:{PresetItem:"currency/high",Count:16b}},{Slot:4b,Item:1054},{Slot:5b,Item:{PresetItem:"currency/high",Count:16b}},{Slot:6b,Item:{id:"minecraft:echo_shard",Count:1b}},{Slot:7b,Item:980},{Slot:9b,Item:{PresetItem:"sacred_shard/lv-4",Count:3b}},{Slot:10b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:11b,Item:{id:"minecraft:amethyst_cluster",Count:1b}},{Slot:12b,Item:{id:"minecraft:end_crystal",Count:1b}},{Slot:13b,Item:1089},{Slot:14b,Item:{id:"minecraft:end_crystal",Count:1b}},{Slot:15b,Item:{id:"minecraft:amethyst_cluster",Count:1b}},{Slot:16b,Item:{id:"minecraft:echo_shard",Count:1b}},{Slot:17b,Item:{PresetItem:"sacred_shard/lv-4",Count:3b}},{Slot:18b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:19b,Item:980},{Slot:20b,Item:{id:"minecraft:amethyst_block",Count:1b}},{Slot:21b,Item:{id:"minecraft:amethyst_cluster",Count:1b}},{Slot:22b,Item:1205},{Slot:23b,Item:{id:"minecraft:amethyst_cluster",Count:1b}},{Slot:24b,Item:{id:"minecraft:amethyst_block",Count:1b}},{Slot:25b,Item:980},{Slot:26b,Item:{id:"minecraft:echo_shard",Count:1b}}]