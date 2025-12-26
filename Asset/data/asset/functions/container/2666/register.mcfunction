#> asset:container/2666/register
#
# コンテナの定義データ
#
# @within function asset:container/2666/


execute unless loaded -112 41 226 run return 1

# ID (int)
    data modify storage asset:container ID set value 2666
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-112, 41, 226]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:glowstone",Count:1b}},{Slot:2b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:6b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:8b,Item:{id:"minecraft:glowstone",Count:1b}},{Slot:9b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:10b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:11b,Item:{id:"minecraft:raw_gold_block",Count:1b}},{Slot:13b,Item:319},{Slot:15b,Item:{id:"minecraft:raw_gold_block",Count:1b}},{Slot:16b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:17b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:18b,Item:{id:"minecraft:glowstone",Count:1b}},{Slot:20b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:21b,Item:{id:"minecraft:raw_gold_block",Count:1b}},{Slot:23b,Item:{id:"minecraft:raw_gold_block",Count:1b}},{Slot:24b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:26b,Item:{id:"minecraft:glowstone",Count:1b}}]