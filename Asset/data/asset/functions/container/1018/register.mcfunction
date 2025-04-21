#> asset:container/1018/register
#
# コンテナの定義データ
#
# @within function asset:container/1018/


execute unless loaded -227 82 6 run return 1

# ID (int)
    data modify storage asset:container ID set value 1018
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-227, 82, 6]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=south]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:2b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:4b,Item:643},{Slot:6b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:8b,Item:{PresetItem:"currency/high",Count:3b}}]