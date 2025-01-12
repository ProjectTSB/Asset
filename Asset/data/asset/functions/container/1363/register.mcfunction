#> asset:container/1363/register
#
# コンテナの定義データ
#
# @within function asset:container/1363/


execute unless loaded -259 56 165 run return 1

# ID (int)
    data modify storage asset:container ID set value 1363
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-259, 56, 165]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:nether_star",Count:64b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:1b,Item:{id:"minecraft:diamond_block",Count:8b,tag:{}}},{Slot:2b,Item:{id:"minecraft:nether_star",Count:16b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:3b,Item:{id:"minecraft:netherite_scrap",Count:1b,tag:{}}},{Slot:4b,Item:{id:"minecraft:netherite_scrap",Count:2b,tag:{}}},{Slot:5b,Item:{id:"minecraft:netherite_scrap",Count:1b,tag:{}}},{Slot:6b,Item:{id:"minecraft:nether_star",Count:16b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:7b,Item:{id:"minecraft:diamond_block",Count:8b,tag:{}}},{Slot:8b,Item:{id:"minecraft:nether_star",Count:64b,tag:{"CustomModelData":20111,"TSB":{"Currency":1b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、小さなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"微かに力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"小さな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:9b,Item:916},{Slot:10b,Item:{id:"minecraft:gold_block",Count:32b,tag:{}}},{Slot:11b,Item:{id:"minecraft:splash_potion",Count:1b,tag:{"Potion":"minecraft:strong_swiftness"}}},{Slot:12b,Item:{id:"minecraft:weeping_vines",Count:1b,tag:{}}},{Slot:13b,Item:{id:"minecraft:weeping_vines",Count:1b,tag:{}}},{Slot:14b,Item:{id:"minecraft:weeping_vines",Count:1b,tag:{}}},{Slot:15b,Item:{id:"minecraft:splash_potion",Count:1b,tag:{"Potion":"minecraft:strong_swiftness"}}},{Slot:16b,Item:{id:"minecraft:gold_block",Count:32b,tag:{}}},{Slot:17b,Item:917},{Slot:18b,Item:{id:"minecraft:weeping_vines",Count:1b,tag:{}}},{Slot:19b,Item:{id:"minecraft:weeping_vines",Count:1b,tag:{}}},{Slot:20b,Item:{id:"minecraft:weeping_vines",Count:1b,tag:{}}},{Slot:21b,Item:{id:"minecraft:weeping_vines",Count:1b,tag:{}}},{Slot:22b,Item:{id:"minecraft:weeping_vines",Count:1b,tag:{}}},{Slot:23b,Item:{id:"minecraft:weeping_vines",Count:1b,tag:{}}},{Slot:24b,Item:{id:"minecraft:weeping_vines",Count:1b,tag:{}}},{Slot:25b,Item:{id:"minecraft:weeping_vines",Count:1b,tag:{}}},{Slot:26b,Item:{id:"minecraft:weeping_vines",Count:1b,tag:{}}}]