#> asset:container/822/register
#
# コンテナの定義データ
#
# @within function asset:container/822/


execute unless loaded -67 280 392 run return 1

# ID (int)
    data modify storage asset:container ID set value 822
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-67, 280, 392]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:1b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:2b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:3b,Item:342},{Slot:4b,Item:{PresetItem:"currency/",Count:64b}},{Slot:5b,Item:1123},{Slot:6b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:7b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:8b,Item:{PresetItem:"currency/high",Count:1b}}]