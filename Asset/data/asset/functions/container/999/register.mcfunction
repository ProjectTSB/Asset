#> asset:container/999/register
#
# コンテナの定義データ
#
# @within function asset:container/999/


execute unless loaded 254 60 -243 run return 1

# ID (int)
    data modify storage asset:container ID set value 999
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [254, 60, -243]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:4b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:8b,Item:{PresetItem:"currency/high",Count:1b}}]