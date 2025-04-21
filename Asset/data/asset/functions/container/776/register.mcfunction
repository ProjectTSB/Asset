#> asset:container/776/register
#
# コンテナの定義データ
#
# @within function asset:container/776/


execute unless loaded 66 56 -135 run return 1

# ID (int)
    data modify storage asset:container ID set value 776
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [66, 56, -135]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:long_regeneration"}}},{Slot:1b,Item:{id:"minecraft:honey_bottle",Count:1b}},{Slot:2b,Item:143},{Slot:3b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:fire_resistance"}}},{Slot:4b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:5b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:strong_leaping"}}},{Slot:6b,Item:143},{Slot:7b,Item:{id:"minecraft:honey_bottle",Count:1b}},{Slot:8b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:strong_poison"}}},{Slot:9b,Item:135},{Slot:10b,Item:456},{Slot:11b,Item:{id:"minecraft:experience_bottle",Count:1b}},{Slot:12b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:13b,Item:{id:"minecraft:brewing_stand",Count:1b}},{Slot:14b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:15b,Item:{id:"minecraft:experience_bottle",Count:1b}},{Slot:16b,Item:456},{Slot:17b,Item:139},{Slot:18b,Item:136},{Slot:19b,Item:{id:"minecraft:honey_bottle",Count:1b}},{Slot:20b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:long_water_breathing"}}},{Slot:21b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:long_swiftness"}}},{Slot:22b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:23b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:turtle_master"}}},{Slot:24b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:slowness"}}},{Slot:25b,Item:{id:"minecraft:honey_bottle",Count:1b}},{Slot:26b,Item:140}]