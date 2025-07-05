#> asset:container/2250/register
#
# コンテナの定義データ
#
# @within function asset:container/2250/


execute unless loaded 170 204 -187 run return 1

# ID (int)
    data modify storage asset:container ID set value 2250
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [170, 204, -187]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=south]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:1b,Item:{id:"minecraft:yellow_stained_glass_pane",Count:1b}},{Slot:2b,Item:{id:"minecraft:yellow_stained_glass_pane",Count:1b}},{Slot:3b,Item:{id:"minecraft:yellow_stained_glass_pane",Count:1b}},{Slot:4b,Item:{id:"minecraft:yellow_stained_glass_pane",Count:1b}},{Slot:5b,Item:{id:"minecraft:yellow_stained_glass_pane",Count:1b}},{Slot:6b,Item:{id:"minecraft:yellow_stained_glass_pane",Count:1b}},{Slot:7b,Item:{id:"minecraft:yellow_stained_glass_pane",Count:1b}},{Slot:9b,Item:{id:"minecraft:yellow_stained_glass_pane",Count:1b}},{Slot:10b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:11b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:12b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:13b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:14b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:15b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:16b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:17b,Item:{id:"minecraft:yellow_stained_glass_pane",Count:1b}},{Slot:19b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:20b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:21b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:22b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:23b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:24b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:25b,Item:{PresetItem:"currency/high",Count:2b}}]