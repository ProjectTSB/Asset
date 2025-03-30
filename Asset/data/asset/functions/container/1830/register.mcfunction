#> asset:container/1830/register
#
# コンテナの定義データ
#
# @within function asset:container/1830/


execute unless loaded 256 110 -276 run return 1

# ID (int)
    data modify storage asset:container ID set value 1830
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [256, 110, -276]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=east]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:4b,Item:1175}]