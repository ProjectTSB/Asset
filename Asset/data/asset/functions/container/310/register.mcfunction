#> asset:container/310/register
#
# コンテナの定義データ
#
# @within function asset:container/310/


execute unless loaded -60 -15 143 run return 1

# ID (int)
    data modify storage asset:container ID set value 310
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-60, -15, 143]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=east]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:107},{Slot:1b,Item:{id:"minecraft:redstone_torch",Count:16b}},{Slot:2b,Item:107},{Slot:3b,Item:{id:"minecraft:redstone_torch",Count:16b}},{Slot:4b,Item:{id:"minecraft:redstone_block",Count:16b}},{Slot:5b,Item:{id:"minecraft:redstone_torch",Count:16b}},{Slot:6b,Item:107},{Slot:7b,Item:{id:"minecraft:redstone_torch",Count:16b}},{Slot:8b,Item:107}]