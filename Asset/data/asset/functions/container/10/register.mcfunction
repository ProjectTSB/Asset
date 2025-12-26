#> asset:container/10/register
#
# コンテナの定義データ
#
# @within function asset:container/10/


execute unless loaded 14 22 -74 run return 1

# ID (int)
    data modify storage asset:container ID set value 10
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [14, 22, -74]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:brewing_stand"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:1b,Item:{id:"minecraft:potion",Count:1b,tag:{"Potion":"minecraft:water"}}}]