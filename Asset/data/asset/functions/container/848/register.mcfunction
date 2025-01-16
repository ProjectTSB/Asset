#> asset:container/848/register
#
# コンテナの定義データ
#
# @within function asset:container/848/


execute unless loaded -80 34 226 run return 1

# ID (int)
    data modify storage asset:container ID set value 848
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-80, 34, 226]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:magma_block",Count:1b}},{Slot:2b,Item:{id:"minecraft:fire_charge",Count:1b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:6b,Item:{id:"minecraft:magma_block",Count:1b}},{Slot:8b,Item:{id:"minecraft:fire_charge",Count:1b}},{Slot:10b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:11b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:13b,Item:313},{Slot:15b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:16b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:18b,Item:{id:"minecraft:fire_charge",Count:1b}},{Slot:20b,Item:{id:"minecraft:magma_block",Count:1b}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:24b,Item:{id:"minecraft:fire_charge",Count:1b}},{Slot:26b,Item:{id:"minecraft:magma_block",Count:1b}}]