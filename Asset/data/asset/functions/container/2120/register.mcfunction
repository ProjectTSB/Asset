#> asset:container/2120/register
#
# コンテナの定義データ
#
# @within function asset:container/2120/


execute unless loaded 110 204 608 run return 1

# ID (int)
    data modify storage asset:container ID set value 2120
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [110, 204, 608]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=down]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:lapis_block",Count:64b}},{Slot:1b,Item:{id:"minecraft:oxidized_copper",Count:64b}},{Slot:2b,Item:672},{Slot:3b,Item:{id:"minecraft:lapis_block",Count:64b}},{Slot:4b,Item:1227},{Slot:5b,Item:{id:"minecraft:lapis_block",Count:64b}},{Slot:6b,Item:1110},{Slot:7b,Item:{id:"minecraft:oxidized_copper",Count:64b}},{Slot:8b,Item:{id:"minecraft:lapis_block",Count:64b}},{Slot:9b,Item:{id:"minecraft:blue_candle",Count:1b}},{Slot:10b,Item:{id:"minecraft:cyan_candle",Count:1b}},{Slot:11b,Item:{id:"minecraft:purple_candle",Count:1b}},{Slot:12b,Item:{PresetItem:"currency/",Count:64b}},{Slot:13b,Item:{id:"minecraft:player_head",Count:1b,tag:{"SkullOwner":{"Id":[I;-1964652749,-1254990743,-1890894989,765751211],"Properties":{"textures":[{"Value":"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGViNWJiOGRhOTVmYjc5MjZiODQ5ZjM3YWY0NGE0MjZiZTY0ZjI4NmQ2ZDBhYjZkYjBkM2Q1MDNmMzUzN2M4NiJ9fX0="}]}},"display":{"Name":"{\"text\":\"Lapis_Jade_Amethの頭\",\"color\":\"yellow\",\"italic\":false}"}}}},{Slot:14b,Item:{PresetItem:"currency/",Count:64b}},{Slot:15b,Item:{id:"minecraft:purple_candle",Count:1b}},{Slot:16b,Item:{id:"minecraft:cyan_candle",Count:1b}},{Slot:17b,Item:{id:"minecraft:blue_candle",Count:1b}},{Slot:18b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:19b,Item:{PresetItem:"currency/high",Count:16b}},{Slot:20b,Item:1054},{Slot:21b,Item:{PresetItem:"currency/high",Count:16b}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-4",Count:3b}},{Slot:23b,Item:{PresetItem:"currency/high",Count:16b}},{Slot:24b,Item:1069},{Slot:25b,Item:{PresetItem:"currency/high",Count:16b}},{Slot:26b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}}]