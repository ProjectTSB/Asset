#> asset:container/1126/register
#
# コンテナの定義データ
#
# @within function asset:container/1126/


execute unless loaded -233 88 -28 run return 1

# ID (int)
    data modify storage asset:container ID set value 1126
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-233, 88, -28]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/",Count:1b}},{Slot:1b,Item:{PresetItem:"currency/",Count:1b}},{Slot:2b,Item:{PresetItem:"currency/",Count:1b}},{Slot:3b,Item:{PresetItem:"currency/",Count:1b}},{Slot:4b,Item:{PresetItem:"currency/",Count:1b}},{Slot:5b,Item:{PresetItem:"currency/",Count:1b}},{Slot:6b,Item:{PresetItem:"currency/",Count:1b}},{Slot:7b,Item:{PresetItem:"currency/",Count:1b}},{Slot:8b,Item:{PresetItem:"currency/",Count:1b}}]