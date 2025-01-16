#> asset:container/900/register
#
# コンテナの定義データ
#
# @within function asset:container/900/


execute unless loaded 246 130 -66 run return 1

# ID (int)
    data modify storage asset:container ID set value 900
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [246, 130, -66]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:bone_meal",Count:16b}},{Slot:1b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:2b,Item:{id:"minecraft:gunpowder",Count:16b}},{Slot:3b,Item:349},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:5b,Item:607},{Slot:6b,Item:{id:"minecraft:bone_meal",Count:16b}},{Slot:7b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:8b,Item:{id:"minecraft:gunpowder",Count:16b}}]