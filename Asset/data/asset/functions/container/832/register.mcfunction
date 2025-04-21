#> asset:container/832/register
#
# コンテナの定義データ
#
# @within function asset:container/832/


execute unless loaded 30 2 103 run return 1

# ID (int)
    data modify storage asset:container ID set value 832
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [30, 2, 103]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:1b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:3b,Item:{id:"minecraft:melon_slice",Count:1b}},{Slot:4b,Item:{id:"minecraft:melon_slice",Count:1b}},{Slot:5b,Item:{id:"minecraft:melon_slice",Count:1b}},{Slot:7b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:9b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:10b,Item:617},{Slot:11b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:12b,Item:{id:"minecraft:melon_slice",Count:1b}},{Slot:13b,Item:371},{Slot:14b,Item:{id:"minecraft:melon_slice",Count:1b}},{Slot:15b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:16b,Item:617},{Slot:17b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:19b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:21b,Item:{id:"minecraft:melon_slice",Count:1b}},{Slot:22b,Item:{id:"minecraft:melon_slice",Count:1b}},{Slot:23b,Item:{id:"minecraft:melon_slice",Count:1b}},{Slot:25b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}}]