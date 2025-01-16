#> asset:container/820/register
#
# コンテナの定義データ
#
# @within function asset:container/820/


execute unless loaded 230 148 -89 run return 1

# ID (int)
    data modify storage asset:container ID set value 820
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [230, 148, -89]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:tnt",Count:1b}},{Slot:1b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:2b,Item:{id:"minecraft:tnt",Count:1b}},{Slot:3b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:4b,Item:1123},{Slot:5b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:6b,Item:{id:"minecraft:tnt",Count:1b}},{Slot:7b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:8b,Item:{id:"minecraft:tnt",Count:1b}}]