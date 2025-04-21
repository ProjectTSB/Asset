#> asset:container/1020/register
#
# コンテナの定義データ
#
# @within function asset:container/1020/


execute unless loaded -237 137 -11 run return 1

# ID (int)
    data modify storage asset:container ID set value 1020
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-237, 137, -11]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:2b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:4b,Item:897},{Slot:6b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:8b,Item:{PresetItem:"currency/high",Count:3b}}]