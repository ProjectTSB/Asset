#> asset:container/2558/register
#
# コンテナの定義データ
#
# @within function asset:container/2558/


execute unless loaded -66 55 -281 run return 1

# ID (int)
    data modify storage asset:container ID set value 2558
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-66, 55, -281]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:water"}}},{Slot:1b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:water"}}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:3b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:5b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:7b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:water"}}},{Slot:8b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:water"}}},{Slot:9b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:water"}}},{Slot:10b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:water"}}},{Slot:11b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:13b,Item:1055},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:15b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:16b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:water"}}},{Slot:17b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:water"}}},{Slot:18b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:water"}}},{Slot:19b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:water"}}},{Slot:20b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:21b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:23b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:24b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:25b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:water"}}},{Slot:26b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:water"}}}]