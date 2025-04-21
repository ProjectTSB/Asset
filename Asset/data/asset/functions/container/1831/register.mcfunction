#> asset:container/1831/register
#
# コンテナの定義データ
#
# @within function asset:container/1831/


execute unless loaded -281 68 134 run return 1

# ID (int)
    data modify storage asset:container ID set value 1831
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-281, 68, 134]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:3b,Item:{id:"minecraft:iron_ingot",Count:1b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:5b,Item:{id:"minecraft:iron_ingot",Count:1b}},{Slot:10b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:13b,Item:1175},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:16b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:21b,Item:{id:"minecraft:iron_ingot",Count:1b}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:23b,Item:{id:"minecraft:iron_ingot",Count:1b}}]