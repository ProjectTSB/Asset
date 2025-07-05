#> asset:container/2253/register
#
# コンテナの定義データ
#
# @within function asset:container/2253/


execute unless loaded 174 204 -186 run return 1

# ID (int)
    data modify storage asset:container ID set value 2253
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [174, 204, -186]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:1b,Item:{id:"minecraft:red_stained_glass_pane",Count:1b}},{Slot:2b,Item:{id:"minecraft:red_stained_glass_pane",Count:1b}},{Slot:3b,Item:{id:"minecraft:red_stained_glass_pane",Count:1b}},{Slot:4b,Item:876},{Slot:5b,Item:{id:"minecraft:red_stained_glass_pane",Count:1b}},{Slot:6b,Item:{id:"minecraft:red_stained_glass_pane",Count:1b}},{Slot:7b,Item:{id:"minecraft:red_stained_glass_pane",Count:1b}},{Slot:9b,Item:{id:"minecraft:red_stained_glass_pane",Count:1b}},{Slot:10b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:11b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:12b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:13b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:14b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:15b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:16b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:17b,Item:{id:"minecraft:red_stained_glass_pane",Count:1b}},{Slot:19b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:20b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:21b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:22b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:23b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:24b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:25b,Item:{PresetItem:"currency/high",Count:6b}}]