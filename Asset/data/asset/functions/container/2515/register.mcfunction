#> asset:container/2515/register
#
# コンテナの定義データ
#
# @within function asset:container/2515/


execute unless loaded 56 96 -250 run return 1

# ID (int)
    data modify storage asset:container ID set value 2515
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [56, 96, -250]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:white_shulker_box[facing=west]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:3b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:4b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:11b,Item:{id:"minecraft:stick",Count:1b,tag:{"CustomModelData":20093,"display":{"Name":"{\"text\":\"シャード屋\",\"color\":\"gold\",\"italic\":false}"}}}},{Slot:12b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:13b,Item:{id:"minecraft:chest",Count:1b,tag:{"BlockEntityTag":{"CustomName":"{\"text\":\"ひつじしゃんのおとしもの\",\"color\":\"aqua\"}","Items":[{"Count":64b,"Slot":0b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":1b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":2b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":3b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":4b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":5b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":6b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":7b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":8b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":9b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":10b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":11b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":12b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":13b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":14b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":15b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":16b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":17b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":18b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":19b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":20b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":21b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":22b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":23b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":24b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":25b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":26b,"id":"minecraft:white_wool"}],"id":"minecraft:chest"},"display":{"Name":"{\"text\":\"ひつじしゃんのおとしもの\",\"color\":\"aqua\"}"}}}},{Slot:14b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:15b,Item:{id:"minecraft:stick",Count:1b,tag:{"CustomModelData":20093,"display":{"Name":"{\"text\":\"シャード屋\",\"color\":\"gold\",\"italic\":false}"}}}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:22b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}}]