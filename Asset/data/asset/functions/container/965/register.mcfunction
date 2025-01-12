#> asset:container/965/register
#
# コンテナの定義データ
#
# @within function asset:container/965/


execute unless loaded -149 45 -108 run return 1

# ID (int)
    data modify storage asset:container ID set value 965
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-149, 45, -108]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:raw_gold",Count:1b,tag:{}}},{Slot:1b,Item:{id:"minecraft:raw_gold",Count:1b,tag:{}}},{Slot:2b,Item:{id:"minecraft:raw_gold",Count:1b,tag:{}}},{Slot:3b,Item:{id:"minecraft:scute",Count:1b,tag:{}}},{Slot:4b,Item:{id:"minecraft:scute",Count:1b,tag:{}}},{Slot:5b,Item:{id:"minecraft:scute",Count:1b,tag:{}}},{Slot:6b,Item:{id:"minecraft:raw_gold",Count:1b,tag:{}}},{Slot:7b,Item:{id:"minecraft:raw_gold",Count:1b,tag:{}}},{Slot:8b,Item:{id:"minecraft:raw_gold",Count:1b,tag:{}}},{Slot:9b,Item:{id:"minecraft:raw_gold",Count:1b,tag:{}}},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:11b,Item:{id:"minecraft:raw_gold",Count:1b,tag:{}}},{Slot:12b,Item:{id:"minecraft:ender_pearl",Count:1b,tag:{}}},{Slot:13b,Item:162},{Slot:14b,Item:{id:"minecraft:ender_pearl",Count:1b,tag:{}}},{Slot:15b,Item:{id:"minecraft:raw_gold",Count:1b,tag:{}}},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:17b,Item:{id:"minecraft:raw_gold",Count:1b,tag:{}}},{Slot:18b,Item:{id:"minecraft:raw_gold",Count:1b,tag:{}}},{Slot:19b,Item:{id:"minecraft:raw_gold",Count:1b,tag:{}}},{Slot:20b,Item:{id:"minecraft:raw_gold",Count:1b,tag:{}}},{Slot:21b,Item:{id:"minecraft:scute",Count:1b,tag:{}}},{Slot:22b,Item:{id:"minecraft:scute",Count:1b,tag:{}}},{Slot:23b,Item:{id:"minecraft:scute",Count:1b,tag:{}}},{Slot:24b,Item:{id:"minecraft:raw_gold",Count:1b,tag:{}}},{Slot:25b,Item:{id:"minecraft:raw_gold",Count:1b,tag:{}}},{Slot:26b,Item:{id:"minecraft:raw_gold",Count:1b,tag:{}}}]