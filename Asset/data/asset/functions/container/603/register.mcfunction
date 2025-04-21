#> asset:container/603/register
#
# コンテナの定義データ
#
# @within function asset:container/603/


execute unless loaded 2939 106 -849 run return 1

# ID (int)
    data modify storage asset:container ID set value 603
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [2939, 106, -849]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=west]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:10b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:13b,Item:{id:"minecraft:iron_sword",Count:1b,tag:{"Damage":0}}},{Slot:16b,Item:{PresetItem:"currency/high",Count:1b}}]