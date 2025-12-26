#> asset:container/2634/register
#
# コンテナの定義データ
#
# @within function asset:container/2634/


execute unless loaded -497 92 81 run return 1

# ID (int)
    data modify storage asset:container ID set value 2634
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-497, 92, 81]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:1b,Item:{id:"minecraft:water_bucket",Count:1b}},{Slot:7b,Item:{id:"minecraft:cod_bucket",Count:1b}},{Slot:10b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:13b,Item:908},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:16b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:18b,Item:{id:"minecraft:obsidian",Count:1b}},{Slot:19b,Item:{id:"minecraft:obsidian",Count:1b}},{Slot:20b,Item:{id:"minecraft:obsidian",Count:1b}},{Slot:21b,Item:{id:"minecraft:lava_bucket",Count:1b}},{Slot:22b,Item:{id:"minecraft:lava_bucket",Count:1b}},{Slot:23b,Item:{id:"minecraft:lava_bucket",Count:1b}},{Slot:24b,Item:{id:"minecraft:obsidian",Count:1b}},{Slot:25b,Item:{id:"minecraft:obsidian",Count:1b}},{Slot:26b,Item:{id:"minecraft:obsidian",Count:1b}}]