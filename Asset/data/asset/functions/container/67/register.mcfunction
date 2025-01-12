#> asset:container/67/register
#
# コンテナの定義データ
#
# @within function asset:container/67/


execute unless loaded -70 170 180 run return 1

# ID (int)
    data modify storage asset:container ID set value 67
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-70, 170, 180]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:lava_bucket",Count:1b,tag:{}}},{Slot:1b,Item:{id:"minecraft:campfire",Count:5b,tag:{}}},{Slot:2b,Item:{id:"minecraft:lava_bucket",Count:1b,tag:{}}},{Slot:3b,Item:{id:"minecraft:gunpowder",Count:10b,tag:{}}},{Slot:4b,Item:{id:"minecraft:gunpowder",Count:10b,tag:{}}},{Slot:5b,Item:{id:"minecraft:gunpowder",Count:10b,tag:{}}},{Slot:6b,Item:{id:"minecraft:lava_bucket",Count:1b,tag:{}}},{Slot:7b,Item:{id:"minecraft:flint_and_steel",Count:1b,tag:{"Damage":0}}},{Slot:8b,Item:{id:"minecraft:lava_bucket",Count:1b,tag:{}}},{Slot:9b,Item:{id:"minecraft:tnt",Count:64b,tag:{}}},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-3",Count:3b}},{Slot:11b,Item:{id:"minecraft:magma_block",Count:32b,tag:{}}},{Slot:12b,Item:{id:"minecraft:oak_log",Count:15b,tag:{}}},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-3",Count:5b}},{Slot:14b,Item:{id:"minecraft:oak_log",Count:15b,tag:{}}},{Slot:15b,Item:{id:"minecraft:magma_block",Count:32b,tag:{}}},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-3",Count:3b}},{Slot:17b,Item:{id:"minecraft:tnt",Count:64b,tag:{}}},{Slot:18b,Item:{id:"minecraft:lava_bucket",Count:1b,tag:{}}},{Slot:19b,Item:{id:"minecraft:flint_and_steel",Count:1b,tag:{"Damage":0}}},{Slot:20b,Item:{id:"minecraft:lava_bucket",Count:1b,tag:{}}},{Slot:21b,Item:{id:"minecraft:gunpowder",Count:10b,tag:{}}},{Slot:22b,Item:{id:"minecraft:gunpowder",Count:10b,tag:{}}},{Slot:23b,Item:{id:"minecraft:gunpowder",Count:10b,tag:{}}},{Slot:24b,Item:{id:"minecraft:lava_bucket",Count:1b,tag:{}}},{Slot:25b,Item:{id:"minecraft:soul_campfire",Count:5b,tag:{}}},{Slot:26b,Item:{id:"minecraft:lava_bucket",Count:1b,tag:{}}}]