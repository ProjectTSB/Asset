#> asset:container/2722/register
#
# コンテナの定義データ
#
# @within function asset:container/2722/


execute unless loaded 281 60 -242 run return 1

# ID (int)
    data modify storage asset:container ID set value 2722
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [281, 60, -242]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:3b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:4b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:5b,Item:{PresetItem:"currency/high",Count:1b}}]