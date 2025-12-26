#> asset:container/2633/register
#
# コンテナの定義データ
#
# @within function asset:container/2633/


execute unless loaded -456 95 51 run return 1

# ID (int)
    data modify storage asset:container ID set value 2633
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-456, 95, 51]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:light_gray_shulker_box[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:yellow_stained_glass_pane",Count:1b}},{Slot:1b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:3b,Item:740},{Slot:4b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:5b,Item:609},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:7b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:8b,Item:{id:"minecraft:yellow_stained_glass_pane",Count:1b}},{Slot:9b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:11b,Item:730},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:15b,Item:820},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:17b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:18b,Item:{id:"minecraft:yellow_stained_glass_pane",Count:1b}},{Slot:19b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:20b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:21b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:22b,Item:{id:"minecraft:glowstone",Count:1b,tag:{"Enchantments":[{"id":"minecraft:unbreaking","lvl":1s}],"HideFlags":1,"display":{"Lore":["{\"text\":\"10000000G(ガメル)で売れる月の石。\",\"color\":\"white\",\"italic\":false}","{\"text\":\"だがこの世界の村人はこの石の価値が分からない。\",\"color\":\"white\",\"italic\":false}"],"Name":"{\"text\":\"輝く月の石\",\"color\":\"gold\",\"bold\":true,\"italic\":false}"}}}},{Slot:23b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:24b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:25b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:26b,Item:{id:"minecraft:yellow_stained_glass_pane",Count:1b}}]