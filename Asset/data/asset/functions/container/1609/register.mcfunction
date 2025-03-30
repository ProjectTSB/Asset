#> asset:container/1609/register
#
# コンテナの定義データ
#
# @within function asset:container/1609/


execute unless loaded -456 175 58 run return 1

# ID (int)
    data modify storage asset:container ID set value 1609
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-456, 175, 58]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:1b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:7b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:9b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:11b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:12b,Item:1043},{Slot:13b,Item:1043},{Slot:14b,Item:1043},{Slot:15b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:17b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:19b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:25b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}}]