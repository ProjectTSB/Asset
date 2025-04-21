#> asset:container/47/register
#
# コンテナの定義データ
#
# @within function asset:container/47/


execute unless loaded 213 148 -91 run return 1

# ID (int)
    data modify storage asset:container ID set value 47
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [213, 148, -91]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:bone",Count:16b}},{Slot:1b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:2b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:3b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:4b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:5b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:6b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:7b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:8b,Item:{id:"minecraft:bone",Count:16b}},{Slot:9b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:10b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:11b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:12b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:13b,Item:{id:"minecraft:rotten_flesh",Count:22b}},{Slot:14b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:15b,Item:{PresetItem:"sacred_shard/lv-3",Count:4b}},{Slot:16b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:17b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:18b,Item:{id:"minecraft:bone",Count:16b}},{Slot:19b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:20b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:21b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:22b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:23b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:24b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:25b,Item:{id:"minecraft:rotten_flesh",Count:2b}},{Slot:26b,Item:{id:"minecraft:bone",Count:16b}}]