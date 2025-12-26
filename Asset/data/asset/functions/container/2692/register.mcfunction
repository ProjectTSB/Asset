#> asset:container/2692/register
#
# コンテナの定義データ
#
# @within function asset:container/2692/


execute unless loaded 179 79 18 run return 1

# ID (int)
    data modify storage asset:container ID set value 2692
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [179, 79, 18]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:cod",Count:1b}},{Slot:1b,Item:{id:"minecraft:tropical_fish",Count:1b}},{Slot:2b,Item:{id:"minecraft:salmon",Count:1b}},{Slot:3b,Item:{id:"minecraft:pufferfish",Count:1b}},{Slot:4b,Item:217},{Slot:5b,Item:{id:"minecraft:cod",Count:1b}},{Slot:6b,Item:{id:"minecraft:tropical_fish",Count:1b}},{Slot:7b,Item:{id:"minecraft:salmon",Count:1b}},{Slot:8b,Item:610}]