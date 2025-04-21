#> asset:container/35/register
#
# コンテナの定義データ
#
# @within function asset:container/35/


execute unless loaded -69 3 49 run return 1

# ID (int)
    data modify storage asset:container ID set value 35
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-69, 3, 49]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/",Count:2b}},{Slot:1b,Item:{id:"minecraft:fermented_spider_eye",Count:8b}},{Slot:2b,Item:{id:"minecraft:beetroot_soup",Count:1b}},{Slot:3b,Item:{id:"minecraft:beetroot_soup",Count:1b}},{Slot:4b,Item:{id:"minecraft:nether_wart_block",Count:1b}},{Slot:5b,Item:{id:"minecraft:rotten_flesh",Count:6b}},{Slot:6b,Item:{id:"minecraft:rotten_flesh",Count:6b}},{Slot:7b,Item:{id:"minecraft:coal",Count:8b}},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:9b,Item:{id:"minecraft:nether_wart_block",Count:1b}},{Slot:10b,Item:292},{Slot:11b,Item:{id:"minecraft:magma_block",Count:2b}},{Slot:12b,Item:{id:"minecraft:nether_wart_block",Count:1b}},{Slot:13b,Item:105},{Slot:14b,Item:{id:"minecraft:nether_wart_block",Count:1b}},{Slot:15b,Item:{id:"minecraft:magma_block",Count:2b}},{Slot:16b,Item:288},{Slot:17b,Item:{id:"minecraft:nether_wart_block",Count:1b}},{Slot:18b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:19b,Item:{id:"minecraft:charcoal",Count:8b}},{Slot:20b,Item:{id:"minecraft:rotten_flesh",Count:6b}},{Slot:21b,Item:{id:"minecraft:rotten_flesh",Count:6b}},{Slot:22b,Item:{id:"minecraft:nether_wart_block",Count:1b}},{Slot:23b,Item:{id:"minecraft:beetroot_soup",Count:1b}},{Slot:24b,Item:{id:"minecraft:beetroot_soup",Count:1b}},{Slot:25b,Item:{id:"minecraft:fermented_spider_eye",Count:8b}},{Slot:26b,Item:{PresetItem:"currency/",Count:2b}}]