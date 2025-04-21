#> asset:container/987/register
#
# コンテナの定義データ
#
# @within function asset:container/987/


execute unless loaded 278 61 -210 run return 1

# ID (int)
    data modify storage asset:container ID set value 987
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [278, 61, -210]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:12b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:14b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:20b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:24b,Item:{PresetItem:"currency/high",Count:1b}}]