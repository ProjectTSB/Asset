#> asset:container/1315/register
#
# コンテナの定義データ
#
# @within function asset:container/1315/


execute unless loaded 24 118 -393 run return 1

# ID (int)
    data modify storage asset:container ID set value 1315
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [24, 118, -393]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:1b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}},{Slot:2b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}},{Slot:3b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}},{Slot:4b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}},{Slot:5b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}},{Slot:6b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}},{Slot:7b,Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b}},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:9b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:11b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:12b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:13b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:14b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:15b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:17b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:18b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:19b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:20b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:21b,Item:{id:"minecraft:nether_star",Count:6b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:22b,Item:{id:"minecraft:nether_star",Count:6b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:23b,Item:{id:"minecraft:nether_star",Count:6b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:24b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:25b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}},{Slot:26b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b}}]