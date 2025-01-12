#> asset:container/1326/register
#
# コンテナの定義データ
#
# @within function asset:container/1326/


execute unless loaded 23 48 337 run return 1

# ID (int)
    data modify storage asset:container ID set value 1326
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [23, 48, 337]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:blaze_rod",Count:4b,tag:{}}},{Slot:1b,Item:{id:"minecraft:magma_cream",Count:6b,tag:{}}},{Slot:3b,Item:{id:"minecraft:nether_star",Count:4b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:5b,Item:{id:"minecraft:nether_star",Count:4b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:7b,Item:978},{Slot:8b,Item:{id:"minecraft:blaze_rod",Count:4b,tag:{}}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:13b,Item:1110},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:18b,Item:{id:"minecraft:blaze_rod",Count:4b,tag:{}}},{Slot:19b,Item:978},{Slot:21b,Item:{id:"minecraft:nether_star",Count:4b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:23b,Item:{id:"minecraft:nether_star",Count:4b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:25b,Item:{id:"minecraft:magma_cream",Count:6b,tag:{}}},{Slot:26b,Item:{id:"minecraft:blaze_rod",Count:4b,tag:{}}}]