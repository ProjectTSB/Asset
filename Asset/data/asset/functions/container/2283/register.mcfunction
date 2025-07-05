#> asset:container/2283/register
#
# コンテナの定義データ
#
# @within function asset:container/2283/


execute unless loaded 189 55 -137 run return 1

# ID (int)
    data modify storage asset:container ID set value 2283
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [189, 55, -137]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:powder_snow_bucket",Count:1b}},{Slot:1b,Item:{id:"minecraft:powder_snow_bucket",Count:1b}},{Slot:2b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:3b,Item:{id:"minecraft:powder_snow_bucket",Count:1b}},{Slot:4b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:5b,Item:{id:"minecraft:powder_snow_bucket",Count:1b}},{Slot:6b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:7b,Item:{id:"minecraft:powder_snow_bucket",Count:1b}},{Slot:8b,Item:{id:"minecraft:powder_snow_bucket",Count:1b}},{Slot:9b,Item:{id:"minecraft:powder_snow_bucket",Count:1b}},{Slot:10b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:11b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:12b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:13b,Item:{id:"minecraft:white_shulker_box",Count:1b,tag:{"BlockEntityTag":{"Items":[{"Count":64b,"Slot":0b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":1b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":2b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":3b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":4b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":5b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":6b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":7b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":8b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":9b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":10b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":11b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":12b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":13b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":14b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":15b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":16b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":17b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":18b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":19b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":20b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":21b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":22b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":23b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":24b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":25b,"id":"minecraft:white_wool"},{"Count":64b,"Slot":26b,"id":"minecraft:white_wool"}],"id":"minecraft:shulker_box"}}}},{Slot:14b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:15b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:16b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:17b,Item:{id:"minecraft:powder_snow_bucket",Count:1b}},{Slot:18b,Item:{id:"minecraft:powder_snow_bucket",Count:1b}},{Slot:19b,Item:{id:"minecraft:powder_snow_bucket",Count:1b}},{Slot:20b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:21b,Item:{id:"minecraft:powder_snow_bucket",Count:1b}},{Slot:22b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:23b,Item:{id:"minecraft:powder_snow_bucket",Count:1b}},{Slot:24b,Item:{id:"minecraft:white_wool",Count:64b}},{Slot:25b,Item:{id:"minecraft:powder_snow_bucket",Count:1b}},{Slot:26b,Item:{id:"minecraft:powder_snow_bucket",Count:1b}}]