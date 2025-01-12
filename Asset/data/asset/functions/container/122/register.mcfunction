#> asset:container/122/register
#
# コンテナの定義データ
#
# @within function asset:container/122/


execute unless loaded 303 53 -80 run return 1

# ID (int)
    data modify storage asset:container ID set value 122
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [303, 53, -80]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:feather",Count:1b,tag:{}}},{Slot:1b,Item:{id:"minecraft:sculk_vein",Count:1b,tag:{}}},{Slot:2b,Item:{id:"minecraft:splash_potion",Count:1b,tag:{"Potion":"minecraft:strong_swiftness"}}},{Slot:3b,Item:{id:"minecraft:feather",Count:1b,tag:{}}},{Slot:4b,Item:456},{Slot:5b,Item:{id:"minecraft:feather",Count:1b,tag:{}}},{Slot:6b,Item:{id:"minecraft:splash_potion",Count:1b,tag:{"Potion":"minecraft:strong_swiftness"}}},{Slot:7b,Item:{id:"minecraft:sculk_vein",Count:1b,tag:{}}},{Slot:8b,Item:{id:"minecraft:feather",Count:1b,tag:{}}},{Slot:9b,Item:{id:"minecraft:sculk_vein",Count:1b,tag:{}}},{Slot:10b,Item:456},{Slot:11b,Item:{id:"minecraft:sculk_vein",Count:1b,tag:{}}},{Slot:12b,Item:{id:"minecraft:nether_star",Count:3b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:13b,Item:920},{Slot:14b,Item:{id:"minecraft:nether_star",Count:3b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:15b,Item:{id:"minecraft:sculk_vein",Count:1b,tag:{}}},{Slot:16b,Item:456},{Slot:17b,Item:{id:"minecraft:sculk_vein",Count:1b,tag:{}}},{Slot:18b,Item:{id:"minecraft:splash_potion",Count:1b,tag:{"Potion":"minecraft:strong_swiftness"}}},{Slot:19b,Item:{id:"minecraft:sculk_vein",Count:1b,tag:{}}},{Slot:20b,Item:{id:"minecraft:feather",Count:1b,tag:{}}},{Slot:21b,Item:456},{Slot:22b,Item:{id:"minecraft:feather",Count:1b,tag:{}}},{Slot:23b,Item:456},{Slot:24b,Item:{id:"minecraft:feather",Count:1b,tag:{}}},{Slot:25b,Item:{id:"minecraft:sculk_vein",Count:1b,tag:{}}},{Slot:26b,Item:{id:"minecraft:splash_potion",Count:1b,tag:{"Potion":"minecraft:strong_swiftness"}}}]