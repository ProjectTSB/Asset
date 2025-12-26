#> asset:container/1982/register
#
# コンテナの定義データ
#
# @within function asset:container/1982/


execute unless loaded 21 8 -63 run return 1

# ID (int)
    data modify storage asset:container ID set value 1982
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [21, 8, -63]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:light_blue_shulker_box[facing=up]{CustomName:\"§x§0§0§A§3§F§FLight Blue Shulker Box\"}"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/",Count:8b}},{Slot:1b,Item:{PresetItem:"currency/",Count:2b}},{Slot:2b,Item:{id:"minecraft:light_blue_candle",Count:1b}},{Slot:3b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:5b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:6b,Item:{id:"minecraft:light_blue_candle",Count:1b}},{Slot:7b,Item:{PresetItem:"currency/",Count:2b}},{Slot:8b,Item:{PresetItem:"currency/",Count:8b}},{Slot:9b,Item:{PresetItem:"currency/",Count:16b}},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:11b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:13b,Item:{id:"minecraft:player_head",Count:1b,tag:{"SkullOwner":{"Id":[I;1794855271,266158709,-1493046605,301936184],"Properties":{"textures":[{"Value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzkzODkxZDdmNWZlYWQyNjc4ODE0YWIyMDE4ZTYzODllMjA2NDY0YjA3NTQyYzI2ZGZhMjJhM2VhNjkyYjY5NiJ9fX0="}]}},"display":{"Lore":["{\"text\":\"Looks a little different from the others.\",\"font\":\"illageralt\",\"color\":\"gray\",\"italic\":false}"],"Name":"{\"text\":\"Alternative Robot Head\",\"font\":\"illageralt\",\"color\":\"#00A3FF\",\"italic\":false}"}}}},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:15b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:17b,Item:{PresetItem:"currency/",Count:16b}},{Slot:18b,Item:{PresetItem:"currency/",Count:8b}},{Slot:19b,Item:{PresetItem:"currency/",Count:2b}},{Slot:20b,Item:{id:"minecraft:light_blue_candle",Count:1b}},{Slot:21b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:23b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:24b,Item:{id:"minecraft:light_blue_candle",Count:1b}},{Slot:25b,Item:{PresetItem:"currency/",Count:2b}},{Slot:26b,Item:{PresetItem:"currency/",Count:8b}}]