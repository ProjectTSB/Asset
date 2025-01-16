#> asset:container/1335/register
#
# コンテナの定義データ
#
# @within function asset:container/1335/


execute unless loaded 106 161 -559 run return 1

# ID (int)
    data modify storage asset:container ID set value 1335
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [106, 161, -559]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:1b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:2b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:6b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:7b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:8b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:9b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:11b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:13b,Item:{id:"minecraft:paper",Count:1b,tag:{"display":{"Lore":["{\"text\":\"ここには何もないようです...\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\" \"}","{\"text\":\" \"}","{\"text\":\" \"}","{\"text\":\"  　　　 (´・ω・`)\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"],"Name":"{\"text\":\"不在届\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"}}}},{Slot:15b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:17b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:18b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:19b,Item:{id:"minecraft:ender_pearl",Count:1b}},{Slot:20b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:22b,Item:{id:"minecraft:wither_rose",Count:1b}},{Slot:24b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:25b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:26b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}}]