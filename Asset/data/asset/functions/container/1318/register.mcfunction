#> asset:container/1318/register
#
# コンテナの定義データ
#
# @within function asset:container/1318/


execute unless loaded -251 98 153 run return 1

# ID (int)
    data modify storage asset:container ID set value 1318
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-251, 98, 153]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:3b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:4b,Item:1081},{Slot:5b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:13b,Item:{PresetItem:"currency/high",Count:1b}}]