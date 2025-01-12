#> asset:container/785/register
#
# コンテナの定義データ
#
# @within function asset:container/785/


execute unless loaded 23 101 -381 run return 1

# ID (int)
    data modify storage asset:container ID set value 785
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [23, 101, -381]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:27b,Item:{id:"minecraft:prismarine_bricks",Count:1b,tag:{}}},{Slot:28b,Item:{id:"minecraft:sea_lantern",Count:1b,tag:{}}},{Slot:29b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b,tag:{}}},{Slot:30b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b,tag:{}}},{Slot:31b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:32b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b,tag:{}}},{Slot:33b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b,tag:{}}},{Slot:34b,Item:{id:"minecraft:sea_lantern",Count:1b,tag:{}}},{Slot:35b,Item:{id:"minecraft:prismarine_bricks",Count:1b,tag:{}}},{Slot:36b,Item:{id:"minecraft:prismarine_bricks",Count:1b,tag:{}}},{Slot:37b,Item:{id:"minecraft:prismarine_bricks",Count:1b,tag:{}}},{Slot:38b,Item:{id:"minecraft:sea_lantern",Count:1b,tag:{}}},{Slot:39b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b,tag:{}}},{Slot:40b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b,tag:{}}},{Slot:41b,Item:{id:"minecraft:blue_stained_glass_pane",Count:1b,tag:{}}},{Slot:42b,Item:{id:"minecraft:sea_lantern",Count:1b,tag:{}}},{Slot:43b,Item:{id:"minecraft:prismarine_bricks",Count:1b,tag:{}}},{Slot:44b,Item:{id:"minecraft:prismarine_bricks",Count:1b,tag:{}}},{Slot:45b,Item:{id:"minecraft:prismarine_bricks",Count:1b,tag:{}}},{Slot:46b,Item:{id:"minecraft:prismarine_bricks",Count:1b,tag:{}}},{Slot:47b,Item:{id:"minecraft:prismarine_bricks",Count:1b,tag:{}}},{Slot:48b,Item:{id:"minecraft:prismarine_bricks",Count:1b,tag:{}}},{Slot:49b,Item:{id:"minecraft:sea_lantern",Count:1b,tag:{}}},{Slot:50b,Item:{id:"minecraft:prismarine_bricks",Count:1b,tag:{}}},{Slot:51b,Item:{id:"minecraft:prismarine_bricks",Count:1b,tag:{}}},{Slot:52b,Item:{id:"minecraft:prismarine_bricks",Count:1b,tag:{}}},{Slot:53b,Item:{id:"minecraft:prismarine_bricks",Count:1b,tag:{}}}]