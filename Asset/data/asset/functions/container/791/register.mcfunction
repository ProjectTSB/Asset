#> asset:container/791/register
#
# コンテナの定義データ
#
# @within function asset:container/791/


execute unless loaded -251 242 614 run return 1

# ID (int)
    data modify storage asset:container ID set value 791
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-251, 242, 614]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:1b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:2b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:4b,Item:{id:"minecraft:netherite_block",Count:1b}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:6b,Item:{PresetItem:"currency/",Count:8b}},{Slot:7b,Item:{id:"minecraft:ender_pearl",Count:16b}},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:9b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:10b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:11b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:12b,Item:{id:"minecraft:netherite_block",Count:1b}},{Slot:13b,Item:1053},{Slot:14b,Item:{id:"minecraft:netherite_block",Count:1b}},{Slot:15b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:16b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:17b,Item:{PresetItem:"currency/",Count:8b}},{Slot:18b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:19b,Item:{id:"minecraft:trident",Count:1b,tag:{"Damage":0}}},{Slot:20b,Item:{PresetItem:"currency/",Count:1b}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:22b,Item:{id:"minecraft:netherite_block",Count:1b}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:24b,Item:{PresetItem:"currency/",Count:1b}},{Slot:25b,Item:{PresetItem:"currency/",Count:8b}},{Slot:26b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}}]