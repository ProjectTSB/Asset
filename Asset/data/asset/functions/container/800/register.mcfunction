#> asset:container/800/register
#
# コンテナの定義データ
#
# @within function asset:container/800/


execute unless loaded 160 145 -201 run return 1

# ID (int)
    data modify storage asset:container ID set value 800
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [160, 145, -201]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:ender_pearl",Count:8b}},{Slot:1b,Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{"Damage":0}}},{Slot:2b,Item:{id:"minecraft:cooked_beef",Count:32b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:6b,Item:{id:"minecraft:cake",Count:1b}},{Slot:7b,Item:{id:"minecraft:diamond_hoe",Count:1b,tag:{"Damage":0}}},{Slot:8b,Item:{id:"minecraft:ender_pearl",Count:8b}},{Slot:9b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:10b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:11b,Item:{id:"minecraft:suspicious_stew",Count:1b,tag:{"effects":[{"duration":7,"id":"minecraft:saturation"}]}}},{Slot:12b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:13b,Item:741},{Slot:14b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:15b,Item:{id:"minecraft:suspicious_stew",Count:1b,tag:{"effects":[{"duration":7,"id":"minecraft:saturation"}]}}},{Slot:16b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:17b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:18b,Item:{id:"minecraft:ender_pearl",Count:8b}},{Slot:19b,Item:{id:"minecraft:diamond_axe",Count:1b,tag:{"Damage":0}}},{Slot:20b,Item:{id:"minecraft:cake",Count:1b}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:24b,Item:{id:"minecraft:cooked_beef",Count:32b}},{Slot:25b,Item:{id:"minecraft:diamond_shovel",Count:1b,tag:{"Damage":0}}},{Slot:26b,Item:{id:"minecraft:ender_pearl",Count:8b}}]