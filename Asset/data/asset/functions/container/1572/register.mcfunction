#> asset:container/1572/register
#
# コンテナの定義データ
#
# @within function asset:container/1572/


execute unless loaded 23 68 -394 run return 1

# ID (int)
    data modify storage asset:container ID set value 1572
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [23, 68, -394]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=true,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:1b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:2b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:3b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:4b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:5b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:6b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:7b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:8b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:9b,Item:{PresetItem:"currency/",Count:12b}},{Slot:10b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:11b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:12b,Item:{PresetItem:"currency/",Count:12b}},{Slot:13b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:14b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:15b,Item:{PresetItem:"currency/",Count:12b}},{Slot:16b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:17b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:18b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:19b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:20b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:21b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:22b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:23b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:24b,Item:{id:"minecraft:dark_prismarine",Count:1b}},{Slot:25b,Item:{id:"minecraft:pufferfish",Count:1b}},{Slot:26b,Item:{id:"minecraft:dark_prismarine",Count:1b}}]