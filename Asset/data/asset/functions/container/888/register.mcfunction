#> asset:container/888/register
#
# コンテナの定義データ
#
# @within function asset:container/888/


execute unless loaded 176 6 -123 run return 1

# ID (int)
    data modify storage asset:container ID set value 888
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [176, 6, -123]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:2b,Item:{id:"minecraft:soul_lantern",Count:1b}},{Slot:6b,Item:{id:"minecraft:soul_lantern",Count:1b}},{Slot:9b,Item:{id:"minecraft:soul_torch",Count:3b}},{Slot:10b,Item:322},{Slot:13b,Item:{id:"minecraft:soul_campfire",Count:1b}},{Slot:16b,Item:383},{Slot:17b,Item:{id:"minecraft:soul_torch",Count:3b}},{Slot:18b,Item:{id:"minecraft:ice",Count:7b}},{Slot:19b,Item:{id:"minecraft:ice",Count:7b}},{Slot:20b,Item:{id:"minecraft:ice",Count:7b}},{Slot:21b,Item:{id:"minecraft:ice",Count:7b}},{Slot:22b,Item:{id:"minecraft:ice",Count:7b}},{Slot:23b,Item:{id:"minecraft:ice",Count:7b}},{Slot:24b,Item:{id:"minecraft:ice",Count:7b}},{Slot:25b,Item:{id:"minecraft:ice",Count:7b}},{Slot:26b,Item:{id:"minecraft:ice",Count:7b}}]