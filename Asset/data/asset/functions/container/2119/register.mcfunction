#> asset:container/2119/register
#
# コンテナの定義データ
#
# @within function asset:container/2119/


execute unless loaded 266 106 -275 run return 1

# ID (int)
    data modify storage asset:container ID set value 2119
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [266, 106, -275]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:3b,Item:{PresetItem:"currency/",Count:1b}},{Slot:4b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:5b,Item:{PresetItem:"currency/",Count:1b}},{Slot:9b,Item:{PresetItem:"currency/",Count:1b}},{Slot:10b,Item:{PresetItem:"currency/",Count:1b}},{Slot:11b,Item:{PresetItem:"currency/",Count:1b}},{Slot:12b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-3",Count:3b}},{Slot:14b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:15b,Item:{PresetItem:"currency/",Count:1b}},{Slot:16b,Item:{PresetItem:"currency/",Count:1b}},{Slot:17b,Item:{PresetItem:"currency/",Count:1b}},{Slot:21b,Item:{PresetItem:"currency/",Count:1b}},{Slot:22b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:23b,Item:{PresetItem:"currency/",Count:1b}}]