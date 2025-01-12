#> asset:container/843/register
#
# コンテナの定義データ
#
# @within function asset:container/843/


execute unless loaded -91 20 224 run return 1

# ID (int)
    data modify storage asset:container ID set value 843
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-91, 20, 224]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:nether_star",Count:1b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:3b,Item:{id:"minecraft:lapis_lazuli",Count:1b,tag:{}}},{Slot:5b,Item:{id:"minecraft:lapis_lazuli",Count:1b,tag:{}}},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:8b,Item:{id:"minecraft:nether_star",Count:1b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:10b,Item:{id:"minecraft:lapis_lazuli",Count:1b,tag:{}}},{Slot:11b,Item:{id:"minecraft:water_bucket",Count:1b,tag:{}}},{Slot:13b,Item:316},{Slot:15b,Item:{id:"minecraft:water_bucket",Count:1b,tag:{}}},{Slot:16b,Item:{id:"minecraft:lapis_lazuli",Count:1b,tag:{}}},{Slot:18b,Item:{id:"minecraft:nether_star",Count:1b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:20b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:21b,Item:{id:"minecraft:lapis_lazuli",Count:1b,tag:{}}},{Slot:23b,Item:{id:"minecraft:lapis_lazuli",Count:1b,tag:{}}},{Slot:24b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:26b,Item:{id:"minecraft:nether_star",Count:1b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}}]