#> asset:container/1607/register
#
# コンテナの定義データ
#
# @within function asset:container/1607/


execute unless loaded -454 66 58 run return 1

# ID (int)
    data modify storage asset:container ID set value 1607
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-454, 66, 58]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:3b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:5b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:11b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:13b,Item:1043},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:15b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:21b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:23b,Item:{PresetItem:"currency/high",Count:4b}}]