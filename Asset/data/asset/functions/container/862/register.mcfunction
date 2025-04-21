#> asset:container/862/register
#
# コンテナの定義データ
#
# @within function asset:container/862/


execute unless loaded 70 21 219 run return 1

# ID (int)
    data modify storage asset:container ID set value 862
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [70, 21, 219]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:powder_snow_bucket",Count:1b}},{Slot:1b,Item:{id:"minecraft:packed_ice",Count:32b}},{Slot:2b,Item:{id:"minecraft:powder_snow_bucket",Count:1b}},{Slot:3b,Item:383},{Slot:4b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:5b,Item:322},{Slot:6b,Item:{id:"minecraft:powder_snow_bucket",Count:1b}},{Slot:7b,Item:{id:"minecraft:blue_ice",Count:32b}},{Slot:8b,Item:{id:"minecraft:powder_snow_bucket",Count:1b}}]