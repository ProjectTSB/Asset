#> asset:container/782/register
#
# コンテナの定義データ
#
# @within function asset:container/782/


execute unless loaded -202 247 614 run return 1

# ID (int)
    data modify storage asset:container ID set value 782
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-202, 247, 614]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:emerald_block",Count:4b}},{Slot:1b,Item:{id:"minecraft:diamond_block",Count:4b}},{Slot:2b,Item:{id:"minecraft:lapis_block",Count:4b}},{Slot:3b,Item:{id:"minecraft:ender_pearl",Count:8b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:5b,Item:{id:"minecraft:ender_pearl",Count:8b}},{Slot:6b,Item:{id:"minecraft:lapis_block",Count:4b}},{Slot:7b,Item:{id:"minecraft:diamond_block",Count:4b}},{Slot:8b,Item:{id:"minecraft:emerald_block",Count:4b}},{Slot:9b,Item:{id:"minecraft:gold_block",Count:4b}},{Slot:10b,Item:{PresetItem:"currency/high",Count:16b}},{Slot:11b,Item:{id:"minecraft:gold_block",Count:4b}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:13b,Item:522},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:15b,Item:{id:"minecraft:gold_block",Count:4b}},{Slot:16b,Item:{PresetItem:"currency/high",Count:16b}},{Slot:17b,Item:{id:"minecraft:gold_block",Count:4b}},{Slot:18b,Item:{id:"minecraft:emerald_block",Count:4b}},{Slot:19b,Item:{id:"minecraft:diamond_block",Count:4b}},{Slot:20b,Item:{id:"minecraft:lapis_block",Count:4b}},{Slot:21b,Item:{id:"minecraft:ender_pearl",Count:8b}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:23b,Item:{id:"minecraft:ender_pearl",Count:8b}},{Slot:24b,Item:{id:"minecraft:lapis_block",Count:4b}},{Slot:25b,Item:{id:"minecraft:diamond_block",Count:4b}},{Slot:26b,Item:{id:"minecraft:emerald_block",Count:4b}}]