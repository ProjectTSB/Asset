#> asset:container/1464/register
#
# コンテナの定義データ
#
# @within function asset:container/1464/


execute unless loaded -81 82 -32 run return 1

# ID (int)
    data modify storage asset:container ID set value 1464
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-81, 82, -32]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:nether_star",Count:1b,tag:{"Currency":1b,"CustomModelData":20111,"display":{"Lore":["{\"italic\":false,\"color\":\"light_purple\",\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\"}","{\"italic\":false,\"color\":\"light_purple\",\"text\":\"希少な価値があり交易に使われる\"}","{\"italic\":false,\"color\":\"light_purple\",\"text\":\"微かに力を感じる\"}"],"Name":"{\"italic\":false,\"color\":\"yellow\",\"text\":\"小さな星のかけら\"}"}}}},{Slot:1b,Item:{id:"minecraft:nether_star",Count:1b,tag:{"Currency":1b,"CustomModelData":20111,"display":{"Lore":["{\"italic\":false,\"color\":\"light_purple\",\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\"}","{\"italic\":false,\"color\":\"light_purple\",\"text\":\"希少な価値があり交易に使われる\"}","{\"italic\":false,\"color\":\"light_purple\",\"text\":\"微かに力を感じる\"}"],"Name":"{\"italic\":false,\"color\":\"yellow\",\"text\":\"小さな星のかけら\"}"}}}},{Slot:2b,Item:{id:"minecraft:nether_star",Count:1b,tag:{"Currency":1b,"CustomModelData":20111,"display":{"Lore":["{\"italic\":false,\"color\":\"light_purple\",\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\"}","{\"italic\":false,\"color\":\"light_purple\",\"text\":\"希少な価値があり交易に使われる\"}","{\"italic\":false,\"color\":\"light_purple\",\"text\":\"微かに力を感じる\"}"],"Name":"{\"italic\":false,\"color\":\"yellow\",\"text\":\"小さな星のかけら\"}"}}}},{Slot:3b,Item:{id:"minecraft:nether_star",Count:1b,tag:{"Currency":1b,"CustomModelData":20111,"display":{"Lore":["{\"italic\":false,\"color\":\"light_purple\",\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\"}","{\"italic\":false,\"color\":\"light_purple\",\"text\":\"希少な価値があり交易に使われる\"}","{\"italic\":false,\"color\":\"light_purple\",\"text\":\"微かに力を感じる\"}"],"Name":"{\"italic\":false,\"color\":\"yellow\",\"text\":\"小さな星のかけら\"}"}}}},{Slot:4b,Item:{id:"minecraft:nether_star",Count:5b,tag:{"Currency":2b,"CustomModelData":20112,"display":{"Lore":["{\"italic\":false,\"color\":\"light_purple\",\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\"}","{\"italic\":false,\"color\":\"light_purple\",\"text\":\"非常に希少な価値があり交易に使われる\"}","{\"italic\":false,\"color\":\"light_purple\",\"text\":\"強い力を感じる\"}"],"Name":"{\"italic\":false,\"color\":\"yellow\",\"text\":\"大きな星のかけら\"}"}}}},{Slot:5b,Item:{id:"minecraft:nether_star",Count:1b,tag:{"Currency":1b,"CustomModelData":20111,"display":{"Lore":["{\"italic\":false,\"color\":\"light_purple\",\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\"}","{\"italic\":false,\"color\":\"light_purple\",\"text\":\"希少な価値があり交易に使われる\"}","{\"italic\":false,\"color\":\"light_purple\",\"text\":\"微かに力を感じる\"}"],"Name":"{\"italic\":false,\"color\":\"yellow\",\"text\":\"小さな星のかけら\"}"}}}},{Slot:6b,Item:{id:"minecraft:nether_star",Count:1b,tag:{"Currency":1b,"CustomModelData":20111,"display":{"Lore":["{\"italic\":false,\"color\":\"light_purple\",\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\"}","{\"italic\":false,\"color\":\"light_purple\",\"text\":\"希少な価値があり交易に使われる\"}","{\"italic\":false,\"color\":\"light_purple\",\"text\":\"微かに力を感じる\"}"],"Name":"{\"italic\":false,\"color\":\"yellow\",\"text\":\"小さな星のかけら\"}"}}}},{Slot:7b,Item:{id:"minecraft:nether_star",Count:1b,tag:{"Currency":1b,"CustomModelData":20111,"display":{"Lore":["{\"italic\":false,\"color\":\"light_purple\",\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\"}","{\"italic\":false,\"color\":\"light_purple\",\"text\":\"希少な価値があり交易に使われる\"}","{\"italic\":false,\"color\":\"light_purple\",\"text\":\"微かに力を感じる\"}"],"Name":"{\"italic\":false,\"color\":\"yellow\",\"text\":\"小さな星のかけら\"}"}}}},{Slot:8b,Item:{id:"minecraft:nether_star",Count:1b,tag:{"Currency":1b,"CustomModelData":20111,"display":{"Lore":["{\"italic\":false,\"color\":\"light_purple\",\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\"}","{\"italic\":false,\"color\":\"light_purple\",\"text\":\"希少な価値があり交易に使われる\"}","{\"italic\":false,\"color\":\"light_purple\",\"text\":\"微かに力を感じる\"}"],"Name":"{\"italic\":false,\"color\":\"yellow\",\"text\":\"小さな星のかけら\"}"}}}}]