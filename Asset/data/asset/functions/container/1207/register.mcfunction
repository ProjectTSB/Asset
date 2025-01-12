#> asset:container/1207/register
#
# コンテナの定義データ
#
# @within function asset:container/1207/


execute unless loaded 133 40 -193 run return 1

# ID (int)
    data modify storage asset:container ID set value 1207
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [133, 40, -193]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:trapped_chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:1b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:3b,Item:{id:"minecraft:gunpowder",Count:4b,tag:{}}},{Slot:4b,Item:{id:"minecraft:gunpowder",Count:4b,tag:{}}},{Slot:5b,Item:{id:"minecraft:gunpowder",Count:4b,tag:{}}},{Slot:7b,Item:{id:"minecraft:diamond",Count:1b,tag:{}}},{Slot:8b,Item:{id:"minecraft:iron_block",Count:1b,tag:{}}},{Slot:10b,Item:{id:"minecraft:diamond",Count:2b,tag:{}}},{Slot:12b,Item:{id:"minecraft:gunpowder",Count:4b,tag:{}}},{Slot:13b,Item:{id:"minecraft:ender_pearl",Count:9b,tag:{}}},{Slot:14b,Item:{id:"minecraft:gunpowder",Count:4b,tag:{}}},{Slot:16b,Item:{id:"minecraft:diamond",Count:2b,tag:{}}},{Slot:18b,Item:{id:"minecraft:iron_block",Count:1b,tag:{}}},{Slot:19b,Item:{id:"minecraft:diamond",Count:1b,tag:{}}},{Slot:21b,Item:{id:"minecraft:gunpowder",Count:4b,tag:{}}},{Slot:22b,Item:{id:"minecraft:gunpowder",Count:4b,tag:{}}},{Slot:23b,Item:{id:"minecraft:gunpowder",Count:4b,tag:{}}},{Slot:24b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:25b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:26b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}}]