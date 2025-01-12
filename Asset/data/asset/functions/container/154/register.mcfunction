#> asset:container/154/register
#
# コンテナの定義データ
#
# @within function asset:container/154/


execute unless loaded -233 86 -28 run return 1

# ID (int)
    data modify storage asset:container ID set value 154
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-233, 86, -28]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:smoker[facing=north,type=null]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:nether_star",Count:4b,tag:{"CustomModelData":20112,"TSB":{"Currency":2b},"display":{"Lore":["{\"text\":\"空から降り注ぐ星が砕け、大きなかけらとなったもの\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"非常に希少な価値があり交易に使われる\",\"italic\":false,\"color\":\"light_purple\"}","{\"text\":\"強い力を感じる\",\"italic\":false,\"color\":\"light_purple\"}"],"Name":"{\"text\":\"大きな星のかけら\",\"italic\":false,\"color\":\"yellow\"}"}}}},{Slot:1b,Item:{PresetItem:"sacred_shard/lv-3",Count:4b}}]