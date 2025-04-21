#> asset:container/777/register
#
# コンテナの定義データ
#
# @within function asset:container/777/


execute unless loaded 92 10 -122 run return 1

# ID (int)
    data modify storage asset:container ID set value 777
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [92, 10, -122]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:gunpowder",Count:16b}},{Slot:1b,Item:312},{Slot:2b,Item:{id:"minecraft:glowstone_dust",Count:16b}},{Slot:3b,Item:{id:"minecraft:magma_cream",Count:16b}},{Slot:4b,Item:{id:"minecraft:tnt",Count:12b}},{Slot:5b,Item:{id:"minecraft:magma_cream",Count:16b}},{Slot:6b,Item:{id:"minecraft:glowstone_dust",Count:16b}},{Slot:7b,Item:368},{Slot:8b,Item:{id:"minecraft:gunpowder",Count:16b}}]