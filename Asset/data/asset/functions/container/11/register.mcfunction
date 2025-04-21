#> asset:container/11/register
#
# コンテナの定義データ
#
# @within function asset:container/11/


execute unless loaded 29 21 -74 run return 1

# ID (int)
    data modify storage asset:container ID set value 11
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [29, 21, -74]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:2b,Item:{id:"minecraft:rotten_flesh",Count:1b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:4b,Item:{id:"minecraft:bone",Count:1b}},{Slot:5b,Item:{id:"minecraft:sweet_berries",Count:1b}},{Slot:6b,Item:{id:"minecraft:rotten_flesh",Count:1b}},{Slot:11b,Item:{id:"minecraft:rotten_flesh",Count:1b}},{Slot:12b,Item:{id:"minecraft:bone",Count:1b}},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:14b,Item:{id:"minecraft:bone",Count:1b}},{Slot:15b,Item:{id:"minecraft:rotten_flesh",Count:1b}},{Slot:20b,Item:{id:"minecraft:rotten_flesh",Count:1b}},{Slot:21b,Item:{id:"minecraft:sweet_berries",Count:1b}},{Slot:22b,Item:{id:"minecraft:bone",Count:1b}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:24b,Item:{id:"minecraft:rotten_flesh",Count:1b}}]