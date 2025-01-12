#> asset:container/900/register
#
# コンテナの定義データ
#
# @within function asset:container/900/


execute unless loaded 246 130 -66 run return 1

# ID (int)
    data modify storage asset:container ID set value 900
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [246, 130, -66]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=up,type=null]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:bone_meal",Count:16b,tag:{}}},{Slot:1b,Item:{id:"minecraft:nether_star",Count:2b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:2b,Item:{id:"minecraft:gunpowder",Count:16b,tag:{}}},{Slot:3b,Item:349},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:5b,Item:607},{Slot:6b,Item:{id:"minecraft:bone_meal",Count:16b,tag:{}}},{Slot:7b,Item:{id:"minecraft:nether_star",Count:2b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:8b,Item:{id:"minecraft:gunpowder",Count:16b,tag:{}}}]