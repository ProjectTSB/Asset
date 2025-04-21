#> asset:container/857/register
#
# コンテナの定義データ
#
# @within function asset:container/857/


execute unless loaded 3 25 -216 run return 1

# ID (int)
    data modify storage asset:container ID set value 857
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [3, 25, -216]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:lodestone",Count:1b}},{Slot:1b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:2b,Item:{id:"minecraft:echo_shard",Count:2b}},{Slot:3b,Item:{PresetItem:"currency/",Count:16b}},{Slot:5b,Item:{PresetItem:"currency/",Count:16b}},{Slot:6b,Item:{id:"minecraft:echo_shard",Count:2b}},{Slot:7b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:8b,Item:{id:"minecraft:lodestone",Count:1b}},{Slot:9b,Item:{id:"minecraft:sculk",Count:4b}},{Slot:10b,Item:{id:"minecraft:amethyst_shard",Count:16b}},{Slot:11b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:13b,Item:702},{Slot:15b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:16b,Item:{id:"minecraft:amethyst_shard",Count:16b}},{Slot:17b,Item:{id:"minecraft:sculk",Count:4b}},{Slot:18b,Item:{id:"minecraft:lodestone",Count:1b}},{Slot:19b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:20b,Item:{id:"minecraft:echo_shard",Count:2b}},{Slot:21b,Item:{PresetItem:"currency/",Count:16b}},{Slot:23b,Item:{PresetItem:"currency/",Count:16b}},{Slot:24b,Item:{id:"minecraft:echo_shard",Count:2b}},{Slot:25b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:26b,Item:{id:"minecraft:lodestone",Count:1b}}]