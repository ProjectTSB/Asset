#> asset:container/1317/register
#
# コンテナの定義データ
#
# @within function asset:container/1317/


execute unless loaded -251 98 152 run return 1

# ID (int)
    data modify storage asset:container ID set value 1317
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-251, 98, 152]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:13b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:21b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:22b,Item:1032},{Slot:23b,Item:{PresetItem:"currency/high",Count:1b}}]