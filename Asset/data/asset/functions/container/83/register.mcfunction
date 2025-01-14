#> asset:container/83/register
#
# コンテナの定義データ
#
# @within function asset:container/83/


execute unless loaded -36 21 -33 run return 1

# ID (int)
    data modify storage asset:container ID set value 83
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-36, 21, -33]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:3b,Item:{PresetItem:"currency/",Count:1b}},{Slot:4b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:5b,Item:{PresetItem:"currency/",Count:1b}},{Slot:10b,Item:{id:"minecraft:carrot",Count:4b}},{Slot:12b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:13b,Item:{id:"minecraft:potato",Count:4b}},{Slot:14b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:16b,Item:{id:"minecraft:sweet_berries",Count:4b}},{Slot:21b,Item:{PresetItem:"currency/",Count:1b}},{Slot:22b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:23b,Item:{PresetItem:"currency/",Count:1b}}]