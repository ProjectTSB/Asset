#> asset:container/108/register
#
# コンテナの定義データ
#
# @within function asset:container/108/


execute unless loaded -69 -9 153 run return 1

# ID (int)
    data modify storage asset:container ID set value 108
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-69, -9, 153]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:hopper[facing=down]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/",Count:1b}},{Slot:1b,Item:{PresetItem:"currency/",Count:1b}},{Slot:2b,Item:{PresetItem:"currency/",Count:1b}},{Slot:3b,Item:{PresetItem:"currency/",Count:1b}},{Slot:4b,Item:{PresetItem:"currency/",Count:1b}}]